//
//  ProgressBarView.swift
//  Shop
//
//  Created by Muessig, Kevin on 16.02.21.
//

import SwiftUI

struct KPIView: View {
    @State var isProgress: Bool
    @State var value: Float
    @State var withLabel: String
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 5.0)
                .opacity(0.5)
                .foregroundColor(Color.blue)
            Circle()
                .trim(from: 0.0, to: CGFloat(min(self.value, 1.0)))
                .stroke(style: StrokeStyle(lineWidth: 5.0, lineCap: .round, lineJoin: .round))
                .foregroundColor(Color.blue)
                .rotationEffect(Angle(degrees: 270.0))
                .animation(.linear)
            VStack(alignment: .center) {
                Text(isProgress ?
                        String(format: "%.0f %%", min(self.value, 1.0)*100.0) :
                        String(format: "%.0f", self.value))
                    .font(.title)
                    .bold()
                Text(withLabel)
                    .font(.subheadline)
            }
        }
    }
}

struct KPIView_Previews: PreviewProvider {
    static var previews: some View {
        KPIView(isProgress: false, value: 10, withLabel: "Dev Advocates")
    }
}
