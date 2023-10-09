//
//  cartRotation.swift
//  SwiftUI learn annimations
//
//  Created by Zakarai Lachkar on 9/10/2023.
//

import SwiftUI

struct cartRotation: View {
    @State private var rotationAngleValue = Angle.degrees(0)
    var body: some View {
        Rectangle()
            .frame(width: 200, height: 100)
            .overlay {
                Text("Tap Me")
                    .foregroundStyle(.white)
                    .font(.system(size: 22, weight: .semibold))
            }
            .rotation3DEffect(
                rotationAngleValue, axis: (x: 0.0, y: 1.0, z: 0.0)
            )
            .onTapGesture {
                withAnimation {
                    rotationAngleValue += Angle.degrees(180)
                }
            }
    }
}

#Preview {
    cartRotation()
}
