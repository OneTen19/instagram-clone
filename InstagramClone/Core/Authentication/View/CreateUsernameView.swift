//
//  CreateUsernameView.swift
//  InstagramClone
//
//  Created by OneTen on 8/22/24.
//

import SwiftUI

struct CreateUsernameView: View {
    @EnvironmentObject var viewModel: RegistrationViewModel
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 12){
            Text("Create username")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("pick a username for your new account. You can always change it later.")
                .font(.footnote)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            TextField("Username", text: $viewModel.username)
                .textInputAutocapitalization(.none)
                .modifier(IGTextFieldModifier())
                .padding(.top)
            
            NavigationLink {
                CreatePasswordView()
                    .navigationBarBackButtonHidden()
            } label: {
                Text("Next")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .clipShape(.buttonBorder)
            }
            .padding(.vertical)
            
            Spacer()
        }
        .toolbar{
            ToolbarItem(placement: .topBarLeading) {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
            }
        }
    }
}

#Preview {
    CreateUsernameView()
}
