//
//  AdvocatesTableViewController.swift
//  AdvocatesApp
//
//  Created by Muessig, Kevin on 20.05.21.
//  Copyright © 2021 SAP. All rights reserved.
//

import SAPCommon
import SAPFiori
import SAPFioriFlows
import SAPFoundation
import SAPOData
import SAPOfflineOData
import UIKit

class AdvocatesTableViewController: UITableViewController, SAPFioriLoadingIndicator {
    private let logger = Logger.shared(named: "AdvocatesTableViewControllerLogger")
    private let advocateDetailSegueIdentifier = "showAdvocateDetail"
    var loadingIndicator: FUILoadingIndicatorView?

    private var searchController: FUISearchController?
    private var searchedAdvocates = [Member]()

    private let destinations = FileConfigurationProvider("AppParameters").provideConfiguration().configuration["Destinations"] as! NSDictionary
    private var entityContainer: EntityContainer<OfflineODataProvider>? {
        // Retrieve Entity Controller
        guard let odataController = OnboardingSessionManager.shared.onboardingSession?.odataControllers[destinations["com.sap.devrel"] as! String] as? ComsapdevrelOfflineODataController, let entityContainer = odataController.entityContainer else {
            AlertHelper.displayAlert(with: "OData service is not reachable, please onboard again.", error: nil, viewController: self)
            return nil
        }
        return entityContainer
    }

    private var advocates: [Member] = []
    private var selectedAdvocate: Member?

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "Developer Advocates"

        // Setup TableView
        self.tableView.rowHeight = UITableView.automaticDimension
        self.tableView.estimatedRowHeight = 44
        self.tableView.register(FUIObjectTableViewCell.self, forCellReuseIdentifier: FUIObjectTableViewCell.reuseIdentifier)

        // Add refreshcontrol UI
        self.refreshControl?.addTarget(self, action: #selector(self.refresh), for: UIControl.Event.valueChanged)
        self.tableView.addSubview(self.refreshControl!)

        setupSearchBar()

        updateTable()
    }

    // MARK: - Data Loading

    func updateTable() {
        self.showFioriLoadingIndicator()
        self.loadData {
            self.tableView.reloadData()
            self.logger.info("Table updated successfully!")
            self.hideFioriLoadingIndicator()
        }
    }

    private func loadData(completionHandler: @escaping () -> Void) {
        self.entityContainer?.fetchMembers { [weak self] members, error in
            if let error = error {
                AlertHelper.displayAlert(with: NSLocalizedString("keyErrorLoadingData", value: "Loading data failed!", comment: "XTIT: Title of loading data error pop up."), error: error, viewController: self!)
                self?.logger.error("Could not update table. Error: \(error)", error: error)
                return
            }
            self?.advocates = members!
            completionHandler()
        }
    }

    @objc func refresh() {
        DispatchQueue.global().async {
            self.loadData {
                DispatchQueue.main.async {
                    self.refreshControl?.endRefreshing()
                }
            }
        }
    }

    // MARK: - FUISearchController setup

    private func setupSearchBar() {
        // Search Controller setup
        searchController = FUISearchController(searchResultsController: nil)

        // Handle the search result directly in the ProductsTableViewController
        searchController!.searchResultsUpdater = self
        searchController!.hidesNavigationBarDuringPresentation = false
        searchController!.searchBar.placeholderText = NSLocalizedString("Search...", comment: "")
        searchController!.searchBar.isBarcodeScannerEnabled = false

        // Set the search bar to the table header view like we did with the KPI Header.
        self.tableView.tableHeaderView = searchController!.searchBar
    }

    // Verify if the search text is empty or not
    private func searchTextIsEmpty() -> Bool {
        return searchController?.searchBar.text?.isEmpty ?? true
    }

    // Verify if the user is currently searching or not
    private func isSearching() -> Bool {
        return searchController?.isActive ?? false && !searchTextIsEmpty()
    }

    // actual search logic for finding the correct advocate for the term the user is searching for
    private func searchAdvocates(_ searchText: String) {
        searchedAdvocates = advocates.filter ({ (advocate: Member) -> Bool in
            // Make sure the string is completely lower-cased or upper-cased. Either way makes it easier for you to
            // compare strings.
            guard let firstName = advocate.firstName, let lastName = advocate.lastName, let focusArea = advocate.focusArea else {
                return false
            }
            
            return (firstName + lastName + focusArea).lowercased().contains(searchText.lowercased())
        })

        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in _: UITableView) -> Int {
        return 1
    }

    override func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        return isSearching() ? searchedAdvocates.count : advocates.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let advocate = isSearching() ? searchedAdvocates[indexPath.row] : advocates[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: FUIObjectTableViewCell.reuseIdentifier, for: indexPath) as! FUIObjectTableViewCell
        cell.accessoryType = .detailDisclosureButton
        if let firstName = advocate.firstName, let lastName = advocate.lastName, let title = advocate.title, let focusArea = advocate.focusArea {
            cell.headlineText = firstName + " " + lastName
            cell.subheadlineText = title
            cell.footnoteText = focusArea
            // TODO: add image if available in service
            return cell
        }
        cell.headlineText = "No Data Available"

        return cell
    }

    override func tableView(_: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selectedAdvocate = advocates[indexPath.row]
        self.performSegue(withIdentifier: advocateDetailSegueIdentifier, sender: self)
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender _: Any?) {
        let advocateDetailVC = segue.destination as! AdvocateDetailViewController

        advocateDetailVC.advocate = selectedAdvocate!
    }
}

extension AdvocatesTableViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        if let searchText = searchController.searchBar.text {
            searchAdvocates(searchText)
            return
        }
    }
}
