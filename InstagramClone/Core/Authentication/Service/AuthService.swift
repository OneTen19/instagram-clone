//
//  AuthService.swift
//  InstagramClone
//
//  Created by OneTen on 8/26/24.
//

import Foundation
import Firebase
import FirebaseAuth
import FirebaseFirestore

class AuthService {
    
    @Published var userSession: FirebaseAuth.User?
    
    static let shared = AuthService()
    
    init() {
        self.userSession = Auth.auth().currentUser
    }
    
    @MainActor
    func login(withEmail email: String, password: String) async throws {
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
        } catch {
            print("DEBUG: Failed to log in with error \(error.localizedDescription)")
        }
    }
    
    // 이런식으로 패스워드는 데이터베이스에 저장하지 않고 유저 생성하는 방법도 있구나
    // 확인해보니 비밀번호 재설정도 가능한 것 같음. 대신 가입한 이메일로 비밀번호 재설정 링크를 보내는 방식으로 확인됨.
    @MainActor
    func createUser(email: String, password: String, username: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            print("DEBUG: Did create user..")
            await uploadUserData(uid: result.user.uid, username: username, email: email)
            print("DEBUG: Did upload user data..")
        } catch {
            print("DEBUG: Failed to register user with error \(error.localizedDescription)")
        }
    }
    
    func loadUserData() async throws {
        
    }
    
    func signout() {
        try? Auth.auth().signOut()
        self.userSession = nil
    }
    
    // 오.. 이렇게 하면 굳이 따로 json 변환 extension 안만들고 파이어베이스에서 제공하는 encoder로 변환해서 보낼 수 있는 것 같음
    private func uploadUserData(uid: String, username: String, email: String) async {
        let user = User(id: uid, username: username, email: email)
        guard let encodeduser = try? Firestore.Encoder().encode(user) else { return }
        try? await Firestore.firestore().collection("users").document(user.id).setData(encodeduser)
    }
    
}
