//
//  GitHubCellView.swift
//  Shop
//
//  Created by Muessig, Kevin on 16.02.21.
//

import SwiftUI

struct GitHubCellView: View {
    var handle: String
    var repoURL: URL
    var repoTitle: String
    
    var body: some View {
//        NavigationLink(destination: AdvocatesDetailView(advocate: Advocate.example)){
//            HStack {
//                Image("github")
//                    .resizable()
//                    .frame(width: 50, height: 50)
//                    .overlay(Circle().stroke(Color.init(UIColor.preferredFioriColor(forStyle: .accent6)), lineWidth: 2.0))
//                    .shadow(radius: 5)
//                VStack(alignment: .leading) {
//                    Text(handle)
//                        .font(.headline)
//                        .foregroundColor(.init(UIColor.preferredFioriColor(forStyle: .accent6)))
//                        .bold()
//                    Link(destination: repoURL, label: {
//                        Text(repoTitle)
//                    })
//                }
//            }
//        }
        Text("Test")
    }
        
}

struct GitHubCellView_Previews: PreviewProvider {
    static var previews: some View {
        GitHubCellView(handle: "JohnDoeCodes", repoURL: URL(string: "https://github.com")!, repoTitle: "github.com/johndoecodes")
    }
}
