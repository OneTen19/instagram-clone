//
//  SignInView.swift
//  InstagramClone
//
//  Created by OneTen on 8/19/24.
//

import SwiftUI

struct SignInView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack(spacing: 20){
            
            Image(systemName: "camera")
                .font(.system(size: 60, weight: .black, design: .monospaced))
            
            VStack(alignment: .leading){
                Text("Welcome Back")
                    .font(.system(size: 32, weight: .heavy))
                Text("SignIn To Continue")
                    .font(.system(size: 16, weight: .medium))
            }
            
            FormField(value: $email, icon: "envelope.fill", placeholder: "E-Mail")
            FormField(value: $password, icon: "lock.fill", placeholder: "Password", isSecure: true)
            
            Button {
                //
            } label: {
                Text("SignIn")
                    .font(.title)
                    .modifier(ButtonModifiers())
            }
            
            HStack{
                Text("New?")
                Text("Create an Account")
                    .font(.system(size: 20, weight: .semibold))
            }
            
            
            
        }
        .padding()
    }
}

#Preview {
    SignInView()
}
