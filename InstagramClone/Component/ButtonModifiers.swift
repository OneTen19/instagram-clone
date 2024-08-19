//
//  ButtonModifiers.swift
//  InstagramClone
//
//  Created by OneTen on 8/19/24.
//

import SwiftUI

struct ButtonModifiers: ViewModifier {

    func body(content: Content) -> some View {
        content
            .frame(minWidth: 0, maxWidth: .infinity)
            .frame(height: 20)
            .padding()
            .foregroundStyle(.white)
            .font(.system(size: 14, weight: .bold))
            .background(Color.black)
            .clipShape(.buttonBorder)
    }
}
