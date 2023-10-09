//
//  CustomLoader.swift
//  SwiftUI learn annimations
//
//  Created by Zakarai Lachkar on 9/10/2023.
//

import SwiftUI

struct CustomLoader: View {
    @State private var rotationAngle = Angle(degrees: 0)
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 20)
                .foregroundColor(.blue.opacity(0.5))
            Circle()
                .trim(from: 0, to: 0.3)
                .stroke(lineWidth: 20)
                .foregroundColor(.blue)
                .rotationEffect(rotationAngle)
                .animation(.easeInOut(duration: 1)
                    .repeatForever(autoreverses: false)
                           , value: rotationAngle)
        }
        .frame(width: 200, height: 200)
        .onAppear(perform: {
            rotationAngle = Angle(degrees: 360)
        })
    }
}

#Preview {
    CustomLoader()
}
