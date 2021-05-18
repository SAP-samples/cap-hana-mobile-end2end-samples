//
//  SocialMediaCellView.swift
//  Shop
//
//  Created by Muessig, Kevin on 16.02.21.
//

import SwiftUI

struct SocialMediaCellView: View {
    var icon: String
    var handle: String
    
    var body: some View {
//        NavigationLink(destination: AdvocatesDetailView(advocate: Advocate.example)){
//            HStack {
//                Image(icon)
//                    .resizable()
//                    .frame(width: 50, height: 50)
//                    .overlay(Circle().stroke(Color.init(UIColor.preferredFioriColor(forStyle: .accent6)), lineWidth: 2.0))
//                    .shadow(radius: 5)
//                Text(handle)
//                    .font(.headline)
//                    .bold()
//                    .foregroundColor(.init(UIColor(hexString: "0A6ED1")))
//            }
//        }
        Text("Test")
    }
}

struct SocialMediaCellView_Previews: PreviewProvider {
    static var previews: some View {
        SocialMediaCellView(icon: "twitter", handle: "@JohnDoe")
    }
}
