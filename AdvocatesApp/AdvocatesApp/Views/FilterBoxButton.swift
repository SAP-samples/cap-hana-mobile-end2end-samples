//
//  FilterBoxView.swift
//  Shop
//
//  Created by Muessig, Kevin on 18.02.21.
//

import SwiftUI

struct FilterBoxButton: View {
    var label: String
    var action = {}
    
    var body: some View {
        Button(label, action: {
            action()
        })
            .foregroundColor(.blue)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 15.0)
                    .stroke(Color.blue, lineWidth: 2)
            )
    }
}

struct FilterBoxView_Previews: PreviewProvider {
    static var previews: some View {
        FilterBoxButton(label: "Name")
    }
}
