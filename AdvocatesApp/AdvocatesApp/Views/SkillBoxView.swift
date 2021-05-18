//
//  SkillBoxView.swift
//  Shop
//
//  Created by Muessig, Kevin on 17.02.21.
//

import SwiftUI

struct SkillBoxView: View {
    var withName: String
    
    var body: some View {
        Text(withName)
            .fontWeight(.bold)
            .foregroundColor(.blue)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 25.0)
                    .stroke(Color.blue, lineWidth: 2))
    }
}

struct SkillBoxView_Previews: PreviewProvider {
    static var previews: some View {
        SkillBoxView(withName: "Cloud Native")
    }
}
