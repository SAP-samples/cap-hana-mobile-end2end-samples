//
//  AdvocatesCellView.swift
//  Shop
//
//  Created by Muessig, Kevin on 12.02.21.
//

import SwiftUI
import SAPFiori

struct AdvocatesCellView: View {
//    var advocate: Advocate // pass this in from outside
    
    var body: some View {
//        NavigationLink(destination: AdvocatesDetailView(advocate: advocate)){
//            HStack {
//                Image(advocate.profileImage)
//                    .resizable()
//                    .frame(width: 80, height: 80)
//                    .clipShape(Circle())
//                    .overlay(Circle().stroke(Color.init(UIColor.preferredFioriColor(forStyle: .accent6)), lineWidth: 2.0))
//                    .shadow(radius: 5)
//                Spacer()
//                VStack(alignment: .leading) {
//                    Text(advocate.firstName + " " + advocate.lastName)
//                        .font(.headline)
//                        .foregroundColor(.init(UIColor.preferredFioriColor(forStyle: .accent6)))
//                    Text(advocate.focusArea)
//                        .font(.subheadline)
//                        .foregroundColor(.init(UIColor.preferredFioriColor(forStyle: .primary1)))
//                    Text((advocate.skills.map { $0.name }).joined(separator: ", "))
//                        .font(.footnote)
//                        .bold()
//                        .foregroundColor(.init(UIColor.preferredFioriColor(forStyle: .accent6b)))
//                }
//            }
//        }
        Text("Test")
    }
}

struct AdvocatesCellView_Previews: PreviewProvider {
    static var previews: some View {
//        AdvocatesCellView(advocate: Advocate.example)
        AdvocatesCellView()
    }
}
