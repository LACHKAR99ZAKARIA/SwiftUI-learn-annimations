//
//  GestureAnimation.swift
//  SwiftUI learn annimations
//
//  Created by Zakarai Lachkar on 9/10/2023.
//

import SwiftUI

struct GestureAnimation: View {
    @State private var dragAmount = CGSize.zero
    private let gradion: Gradient = Gradient(colors: [.gray.opacity(0.2), .gray, .black])
    var body: some View {
        LinearGradient(gradient: gradion, startPoint: .topLeading, endPoint: .bottomTrailing)
            .frame(width: 300, height: 200)
            .cornerRadius(20)
            .offset(dragAmount)
//            .animation(.spring(), value: dragAmount)
            .gesture(
                DragGesture()
                    .onChanged{ value in
                        withAnimation(.spring) {
                            dragAmount = value.translation
                        }
                    }
                    .onEnded({ _ in
                        withAnimation(.easeOut(duration: 3)) {
                            dragAmount = .zero
                        }
                    })
            )
    }
}

#Preview {
    GestureAnimation()
}
