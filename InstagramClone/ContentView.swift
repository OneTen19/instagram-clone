//
//  ContentView.swift
//  InstagramClone
//
//  Created by OneTen on 8/19/24.
//

import SwiftUI

struct ContentView: View {
    @State private var mail: String = ""
    @State private var password: String = ""
    
    var body: some View {
        MainTabView()
    }
}

#Preview {
    ContentView()
}
