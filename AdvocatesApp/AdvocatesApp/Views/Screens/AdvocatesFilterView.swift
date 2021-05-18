//
//  AdvocatesFilterView.swift
//  Shop
//
//  Created by Muessig, Kevin on 18.02.21.
//

import SwiftUI

struct AdvocatesFilterView: View {
//    @StateObject var filter = Filter()
//    let api: AdvocatesAPI
    
    @State private var selectedTech = ""
    @State private var technologies = [Skill]()
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
//        NavigationView {
//            Form {
//                Section(header: Text("Sort By")) {
//                    HStack {
//                        FilterBoxButton(label: "Adv. Name", action: {
//                            filter.sortBy = SortBy.name
//                        })
//                        Spacer()
//                        FilterBoxButton(label: "Focus Area", action: {
//                            filter.sortBy = SortBy.focusArea
//                        })
//                    }.padding()
//                }
//
//                Section(header: Text("Filter By")) {
//                    Picker("Select Technology", selection: $selectedTech) {
//                        ForEach(technologies, id: \.self) {
//                            Text($0.name)
//                        }
//                    }
//                }
//
//                Section(header: Text(" ")) {
//                    Button("Reset All") {
//                        resetFilter()
//                    }
//                }
//            }
//            .navigationBarTitle("Filter", displayMode: .inline)
//            .toolbar{
//                ToolbarItem(placement: ToolbarItemPlacement.navigationBarTrailing,
//                            content: { Button("Cancel", action: {
//                                                resetFilter()
//                                                presentationMode.wrappedValue.dismiss() })
//                            })
//                ToolbarItem(placement: ToolbarItemPlacement.navigationBarLeading,
//                            content: { Button("Done", action: {
//                                                filter.filterBy = selectedTech
//                                                presentationMode.wrappedValue.dismiss() })
//                            })
//            }
//            .onAppear(perform: loadData)
//        }
//        .environmentObject(filter)
        Text("Test")
    }
    
//    private func resetFilter() {
//        filter.reset()
//        self.selectedTech = ""
//    }
//
//    private func loadData() {
//        api.fetchSkills() { bool, result  in
//            if bool {
//                self.technologies = result
//            }
//        }
//    }
}

struct AdvocatesFilterView_Previews: PreviewProvider {
    static var previews: some View {
//        AdvocatesFilterView(api: MockViewPreviewAPI())
        AdvocatesFilterView()
    }
}
