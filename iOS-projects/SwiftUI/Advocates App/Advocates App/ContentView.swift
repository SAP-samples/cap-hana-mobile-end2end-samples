//
//  ContentView.swift
//  Advocates App
//
//  Created by Muessig, Kevin on 29.06.21.
//

import SwiftUI
import FioriSwiftUICore

struct ContentView: View {
    
    @EnvironmentObject var dataModel: DataModel
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBarView(searchText: $searchText)
                    .padding(.top, 10)
                
                List(dataModel.advocates.filter({
                    searchText.isEmpty ? true : $0.firstName!.contains(searchText) || $0.lastName!.contains(searchText) || $0.focusArea!.contains(searchText)
                })) { advocate in
                    // Model-based initializer
                    NavigationLink(destination: AdvocatesDetailView(advocate: advocate)) {
                        ObjectItem(model: advocate)
                            .padding(EdgeInsets(top: 0, leading: 32, bottom: 0, trailing: 32))
                        
                        // Alternative: ViewBuilder-based initializer
                        //                    if let firstName = advocate.firstName, let lastName = advocate.lastName, let title = advocate.title, let area = advocate.focusArea {
                        //                        ObjectItem(title: {
                        //                            Text(firstName + " " + lastName)
                        //                        }, subtitle: {
                        //                            Text(title)
                        //                        }, footnote: {
                        //                            Text(area)
                        //                        })
                        //                    }
                    }
                }
                .listStyle(GroupedListStyle())
                .navigationTitle("Advocates")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(DataModel())
    }
}
