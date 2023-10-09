//
//  ButtonCercleAutoAnimation.swift
//  SwiftUI learn annimations
//
//  Created by Zakarai Lachkar on 9/10/2023.
//

import SwiftUI

struct ButtonCercleAutoAnimation: View {
    @State private var animationAmount = 1.0
    var body: some View {
        Button(action: {}, label: {
            Text("Tap Me")
                .foregroundStyle(.white)
                .font(.system(size: 25, weight: .semibold))
        })
        .padding(50)
        .background(.red)
        .clipShape(Circle())
        .overlay {
            Circle()
                .stroke(.red)
                .scaleEffect(animationAmount)
                .opacity(2 - animationAmount)
                .animation(.easeInOut(duration: 1)
                    .repeatForever(autoreverses: false)
                    , value: animationAmount)
        }
        .onAppear {
            animationAmount += 1.0
        }
    }
}

#Preview {
    ButtonCercleAutoAnimation()
}
