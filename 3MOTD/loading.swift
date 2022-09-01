//
//  loading.swift
//  3MOTD
//
//  Created by Qi Yang on 8/7/22.
//

import SwiftUI

struct loading: View {
    @State private var degrees = Angle.degrees(0)
    var body: some View {
        Circle()
            .trim(from: 0.0, to: 0.25)
            .stroke(style: StrokeStyle(lineWidth: 10, lineCap: .round))
            .foregroundColor(Color("tan"))
            .padding()
            .frame(width: 100, height: 100)
            .rotationEffect(degrees)
            .onAppear() {
                withAnimation(.easeInOut.repeatCount(5)) {
                    for _ in 0...3 {
                        degrees += Angle.degrees(120)
                    }
                }
            }
    }
    
    
}


struct loading_Previews: PreviewProvider {
    static var previews: some View {
        loading()
            .previewInterfaceOrientation(.portrait)
    }
}
