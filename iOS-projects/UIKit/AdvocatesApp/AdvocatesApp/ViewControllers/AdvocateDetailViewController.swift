//
//  AdvocateDetailViewController.swift
//  AdvocatesApp
//
//  Created by Muessig, Kevin on 20.05.21.
//  Copyright © 2021 SAP. All rights reserved.
//

import UIKit

class AdvocateDetailViewController: UIViewController{
    
    var advocate: Member!

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var focusAreaLabel: UILabel!
    @IBOutlet var descriptionTextView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.textColor = UIColor.preferredFioriColor(forStyle: .primary1)
        focusAreaLabel.textColor = UIColor.preferredFioriColor(forStyle: .tintColor)

        if let firstName = advocate.firstName, let lastName = advocate.lastName, let title = advocate.title, let focusArea = advocate.focusArea, let description = advocate.description {
            nameLabel.text = firstName + " " + lastName
            titleLabel.text = title
            focusAreaLabel.text = focusArea
            descriptionTextView.text = description
        }
    }
}
