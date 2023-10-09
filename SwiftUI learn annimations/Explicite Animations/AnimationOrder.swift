//
//  AnimationOrder.swift
//  SwiftUI learn annimations
//
//  Created by Zakarai Lachkar on 9/10/2023.
//

import SwiftUI

struct AnimationOrder: View {
    @State private var isEnabled = false
    @State private var animationAmount = 1.0
    var body: some View {
        Button {
            
        } label: {
            Text("Tap me!")
                .foregroundStyle(.white)
                .padding()
                .background(isEnabled ? .blue : .gray)
                .animation(.easeIn(duration: 2), value: isEnabled)
                .cornerRadius(isEnabled ? 0 : 10 )
                .animation(.easeIn(duration: 5), value: isEnabled)
                .frame(width: 100, height: 20)
                .scaleEffect(animationAmount)
                .animation(.easeIn(duration: 10), value: isEnabled)
                .onTapGesture {
                    isEnabled.toggle()
                    if isEnabled {
                        animationAmount = 1
                    } else {
                        animationAmount = 3
                    }
                }
        }

    }
}

#Preview {
    AnimationOrder()
}
