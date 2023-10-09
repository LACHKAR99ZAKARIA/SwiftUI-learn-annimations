//
//  ColorStageAnimation.swift
//  SwiftUI learn annimations
//
//  Created by Zakarai Lachkar on 9/10/2023.
//

import SwiftUI

struct ColorStateAnimation: View {
    @State private var color: Color = .red
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 200, height: 100)
                .animation(.default, value: color)
            .foregroundColor(color)
            HStack(content: {
                Button(action: {
                    color = .red
                }, label: {
                    Text("Rouge")
                        .foregroundStyle(.red)
                })
                Button(action: {
                    color = .blue
                }, label: {
                    Text("Bleu")
                        .foregroundStyle(.blue)
                })
            })
        }
    }
}

#Preview {
    ColorStateAnimation()
}
