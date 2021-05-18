//
//  AdvocatesDetailview.swift
//  Shop
//
//  Created by Muessig, Kevin on 12.02.21.
//

import SwiftUI

struct AdvocatesDetailView: View {
//    var advocate: Advocate
    
    @State private var collapsed = true
    
    var body: some View {
//        VStack(alignment: .center, spacing: 10) {
//            ProfileHeaderView(image: advocate.profileImage)
//
//            Text(advocate.description)
//                .multilineTextAlignment(.center)
//                .padding(.horizontal)
//                .frame(minWidth: 0,
//                       maxWidth: .infinity,
//                       minHeight: 0,
//                       maxHeight: collapsed ? 100 : .none)
//                .clipped()
//                .animation(.linear)
//                .transition(.slide)
//            ZStack(alignment: .center) {
//                Button (action: { self.collapsed.toggle() }) {
//                    Image(systemName: self.collapsed ? "chevron.down" : "chevron.up") }
//                Divider().frame(minWidth: 0,
//                                maxWidth: collapsed ? .infinity : 200,
//                                minHeight: 0,
//                                maxHeight: 50)
//            }.animation(.linear)
//            ScrollView(.horizontal) {
//                HStack(spacing: 0) {
//                    ForEach(0 ..< advocate.skills.count) { index in
//                        SkillBoxView(withName: advocate.skills[index].name)
//                            .frame(width: 140, height: 100, alignment: .center)
//                            .fixedSize()
//                    }
//                }
//            }
//            Divider()
//            List {
//                SocialMediaCellView(icon: "twitter", handle: "@KevinMuessig")
//            }
//        }
        Text("Test")
    }
}

struct AdvocatesDetailView_Previews: PreviewProvider {
    static var previews: some View {
//        AdvocatesDetailView(advocate: Advocate.example)
//            .previewDevice("iPhone 11 Pro")
        AdvocatesDetailView()
    }
}
