//
//  CurrentUserProfileView.swift
//  InstagramClone
//
//  Created by OneTen on 8/23/24.
//

import SwiftUI

struct CurrentUserProfileView: View {
    
    let user: User

    var body: some View {
        NavigationStack {
            ScrollView{
                // header
                ProfileHeaderView(user: user)

                
                
                // post grid view
                PostGridView(user: user)
                
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        AuthService.shared.signout()
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundStyle(.black)
                    }
                    
                }
            }
        }
    }
}

#Preview {
    CurrentUserProfileView(user: User.MOCK_USERS[0])
}
