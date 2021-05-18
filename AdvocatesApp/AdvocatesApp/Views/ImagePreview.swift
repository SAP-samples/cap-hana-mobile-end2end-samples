//
//  ImagePreview.swift
//  AdvocatesApp
//
//  Created by Muessig, Kevin on 08.03.21.
//
import SwiftUI

struct ImagePreview: View {
    var image: Image
    
    var body: some View {
        ZStack {
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
        .padding(10)
        .background(Color.white)
        .cornerRadius(3.0)
        .shadow(radius: 3)
    }
}
