//
//  IGTextFieldModifier.swift
//  InstagramClone
//
//  Created by OneTen on 8/22/24.
//

import SwiftUI

struct IGTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .clipShape(.buttonBorder)
            .padding(.horizontal, 24)
    }
}
