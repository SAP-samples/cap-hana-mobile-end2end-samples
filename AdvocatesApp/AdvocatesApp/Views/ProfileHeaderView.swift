//
//  DescriptionView.swift
//  Shop
//
//  Created by Muessig, Kevin on 17.02.21.
//

import SwiftUI

struct ProfileHeaderView: View {
    @State var image: String
    
    var body: some View {
            Image(image)
                .resizable()
                .clipShape(Circle())
                .frame(width: 200, height: 200)
                .overlay(Circle().stroke(Color.init(UIColor.preferredFioriColor(forStyle: .accent6)), lineWidth: 2.0))
                .shadow(radius: 10)
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView(image: "pencil")
    }
}
