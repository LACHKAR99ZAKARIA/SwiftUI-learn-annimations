//
//  TextTransition.swift
//  SwiftUI learn annimations
//
//  Created by Zakarai Lachkar on 9/10/2023.
//

import SwiftUI

struct TextTransition: View {
    @State private var isShowing = false
    @State private var color: Color = .blue
    @State private var text = "Hide"
    let textTransition = AnyTransition.asymmetric(
        insertion: .scale.combined(with: .opacity.combined(with: .slide)),
        removal: .opacity
    )
    var body: some View {
        VStack {
            if isShowing {
                Text("Hello")
//                    .transition(.slide)
//                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
                    .transition(textTransition)
            }
            Button(action: {
                withAnimation(.easeOut(duration: 2)) {
                    isShowing.toggle()
                }
            }, label: {
                Text(text)
                    .foregroundStyle(.white)
                    .padding()
                    .background(color)
                    .cornerRadius(10)
            })
            .onChange(of: isShowing) { oldValue, newValue in
                withAnimation(.default) {
                    color = newValue ? .orange : .blue
                    text = newValue ? "Show" : "Hide"
                }
            }
        }
    }
}

#Preview {
    TextTransition()
}
