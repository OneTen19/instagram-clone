//
//  ProfileView.swift
//  InstagramClone
//
//  Created by OneTen on 8/21/24.
//

import SwiftUI

struct ProfileView: View {
    private var gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    
    
    var body: some View {
        NavigationStack {
            ScrollView{
                // header
                VStack(spacing: 10){
                    // picture & status
                    HStack{
                        
                        //picture
                        Image("ProfileImage")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                        
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
                        Text("Kim Hanyeol")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        Text("Life Is One Shot")
                            .font(.footnote)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    
                    
                    
                    
                    // action button
                    Button {
                        //
                    } label: {
                        Text("Edit Profile")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 360, height: 32)
                            .foregroundStyle(.black)
                            .overlay(RoundedRectangle(cornerRadius: 6).stroke(Color.gray, lineWidth: 1))
                    }

                    
                    Divider()
                }
                
                
                // post grid view
                LazyVGrid(columns: gridItems, spacing: 1){
                    ForEach(0 ... 15, id: \.self) { index in
                        Image("ProfileImage")
                            .resizable()
                            .scaledToFill()
                    }
                }
                
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        //
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
    ProfileView()
}
