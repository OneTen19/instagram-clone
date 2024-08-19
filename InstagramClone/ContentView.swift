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
        VStack{
            
            FormField(value: $mail, icon: "mail", placeholder: "E-mail")
            
            FormField(value: $password, icon: "lock", placeholder: "Password", isSecure: true)
            


        }
    }
}

#Preview {
    ContentView()
}
