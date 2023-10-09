//
//  ImageZoomAnimation.swift
//  SwiftUI learn annimations
//
//  Created by Zakarai Lachkar on 9/10/2023.
//

import SwiftUI

struct ImageZoomAnimation: View {
    @State private var isZomed = false
    var body: some View {
        Image(.testImg)
            .resizable()
            .aspectRatio(contentMode: isZomed ? .fill : .fit)
            .onTapGesture {
                isZomed.toggle()
            }
            .animation(
                .easeIn(duration: 1)
//                .delay(1)
//                .repeatForever()
                    .repeatCount(3, autoreverses: true)
                , value: isZomed)
            .ignoresSafeArea()
    }
}

#Preview {
    ImageZoomAnimation()
}
