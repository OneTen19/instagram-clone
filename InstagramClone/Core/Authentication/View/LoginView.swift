//
//  LoginView.swift
//  InstagramClone
//
//  Created by OneTen on 8/22/24.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel()
    
    var body: some View {
        NavigationStack{
            VStack{
                
                Spacer()
                
                // logo image
                Image("instagram_logo_black")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220, height: 100)
                
                
                // text field
                TextField("Enter your email", text: $viewModel.email)
                    .textInputAutocapitalization(.none)
                    .modifier(IGTextFieldModifier())
                
                SecureField("Enter your password", text: $viewModel.password)
                    .modifier(IGTextFieldModifier())

                
                Button {
                    print("show forgor password")
                } label: {
                    Text("Forgot Password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 28)
                }
                .frame(maxWidth: .infinity, alignment: .trailing)

                
                Button {
                    Task { try await viewModel.signIn() }
                } label: {
                    Text("Log In")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 360, height: 44)
                        .background(Color(.systemBlue))
                        .clipShape(.buttonBorder)
                }
                .padding(.vertical)
                
                
                HStack{
                    VStack{
                        Divider()
                            .background(.gray)
                    }
                        
                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    VStack{
                        Divider()
                            .background(.gray)
                    }
                }
                .foregroundStyle(.gray)
                .padding(.horizontal)
                
                HStack{
                    Text("f")
                        .font(.title2)
                        .fontWeight(.bold)
                        .frame(width: 20, height: 20)
                        .background(Color(.systemBlue))
                        .foregroundStyle(.white)
                        .clipShape(Circle())
                    
                    Text("Continue with Facebook")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color(.systemBlue))
                }
                .padding(.top, 8)
                
                
                Spacer()
                
                
                Divider()
                
                NavigationLink {
                    AddEmailView()
                        .navigationBarBackButtonHidden()
                } label: {
                    HStack(spacing: 3){
                        Text("Don't have an account?")
                        
                        Text("Sign Up")
                            .fontWeight(.semibold)
                    }
                    .font(.footnote)
                }
                .padding(.vertical, 16)

                
            }
        }
    }
}

#Preview {
    LoginView()
}
