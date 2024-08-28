//
//  EditProfileViewModel.swift
//  InstagramClone
//
//  Created by OneTen on 8/28/24.
//

import PhotosUI
import Firebase
import SwiftUI

@MainActor
class EditProfileViewModel: ObservableObject {
    
    @Published var selectedImage: PhotosPickerItem? {
        didSet { Task {await loadImage(fromItem: selectedImage)} }
    }
    @Published var profileImage: Image?
    
    @Published var fullname: String = ""
    @Published var bio: String = ""
    
    func loadImage(fromItem item: PhotosPickerItem?) async {
        guard let item = item else {return}
        
        guard let data = try? await item.loadTransferable(type: Data.self) else {return}
        guard let uiImage = UIImage(data: data) else {return}
        
        self.profileImage = Image(uiImage: uiImage)
    }
    
}
