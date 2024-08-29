//
//  ProfileHeaderView.swift
//  InstagramClone
//
//  Created by OneTen on 8/23/24.
//

import SwiftUI

struct ProfileHeaderView: View {
    let user: User
    @State private var showEditProfile: Bool = false
    
    var body: some View {
        VStack(spacing: 10){
            // picture & status
            HStack{
                
                //picture
                CircularProfileImageView(user: user, size: .large)
                
                Spacer()
                
                // status
                HStack(spacing: 8){
                    // posts
                    UserStatView(value: 3, title: "Posts")
                    
                    // Followers
                    UserStatView(value: 1, title: "Followers")
                    
                    // Following
                    UserStatView(value: 2, title: "Following")
                }
            }
            .padding(.horizontal)
            .padding(.bottom, 4)
            
            
            // name & bio
            VStack(alignment: .leading, spacing: 4){
                if let fullname = user.fullname {
                    Text(fullname)
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                if let bio = user.bio {
                    Text(bio)
                        .font(.footnote)
                }

            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            
            
            
            
            // action button
            Button {
                if user.isCurrentUser {
                    showEditProfile.toggle()
                } else {
                    print("Follow users")
                }
            } label: {
                Text(user.isCurrentUser ? "Edit Profile" : "Follow")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 32)
                    .background(user.isCurrentUser ? .white : Color(.systemBlue))
                    .foregroundStyle(user.isCurrentUser ? .black : .white)
                    .clipShape(.buttonBorder)
                    .overlay(
                        RoundedRectangle(cornerRadius: 6)
                            .stroke(user.isCurrentUser ? .gray : .clear, lineWidth: 1)
                    )
            }
            
            
            Divider()
        }
        .fullScreenCover(isPresented: $showEditProfile) {
            EditProfileView(user: user)
        }
        
    }
}

#Preview {
    ProfileHeaderView(user: User.MOCK_USERS[0])
}
