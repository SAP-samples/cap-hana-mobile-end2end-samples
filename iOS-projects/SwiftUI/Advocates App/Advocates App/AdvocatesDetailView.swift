//
//  AdvocatesDetailView.swift
//  Advocates App
//
//  Created by Muessig, Kevin on 02.07.21.
//

import SwiftUI

struct AdvocatesDetailView: View {
    var advocate: Member
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5.0) {
            Text((advocate.firstName ?? "") + " " + (advocate.lastName ?? ""))
                .font(.title)
                
            Text(advocate.title ?? "")
                .foregroundColor(.gray)
                .font(.title3)
                
            Text(advocate.focusArea ?? "")
                .foregroundColor(.blue)
                .font(.title3)
            
            Text(advocate.description ?? "")
        }
        .padding()
        
        Spacer()
    }
}

struct AdvocatesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AdvocatesDetailView(advocate: Member())
    }
}
