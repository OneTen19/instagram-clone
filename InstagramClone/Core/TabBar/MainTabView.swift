//
//  MainTabView.swift
//  InstagramClone
//
//  Created by OneTen on 8/21/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            
            Text("Feed")
                .tabItem {
                    Image(systemName: "house")
                }
            
            Text("Search")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            
            Text("UploadPost")
                .tabItem {
                    Image(systemName: "plus.square")
                }
            
            Text("Notification")
                .tabItem {
                    Image(systemName: "heart")
                }
            
            Text("Profile")
                .tabItem {
                    Image(systemName: "person")
                }
            
        }
        .tint(.black)
        
    }
}

#Preview {
    MainTabView()
}
