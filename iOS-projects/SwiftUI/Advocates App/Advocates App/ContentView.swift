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
    
    var body: some View {
        NavigationView {
            List {
                ForEach(dataModel.advocates) { advocate in
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
            }.navigationTitle("Advocates App")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(DataModel())
    }
}
