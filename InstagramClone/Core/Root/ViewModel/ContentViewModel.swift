//
//  ContentViewModel.swift
//  InstagramClone
//
//  Created by OneTen on 8/27/24.
//

import Foundation
import FirebaseAuth
import Combine

// 이 부분은 컴바인으로 구현한 만큼 아직 이해할 수 있는 부분은 아님
// 추후 더 공부할 것
// RXswift vs Combine vs async await
// 비동기? 반응형? 처리의 대표적인 3가지 인듯 키워드만 기억해두고 나중에 공부해보자

class ContentViewModel: ObservableObject {
    
    private let service = AuthService.shared
    private var cancellabels = Set<AnyCancellable>()
    
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: User?
    
    init() {
        setupSubscribers()
    }
    
    func setupSubscribers() {
        service.$userSession.sink { [weak self] userSession in
            self?.userSession = userSession
        }
        .store(in: &cancellabels)
        
        service.$currentUser.sink { [weak self] currentUser in
            self?.currentUser = currentUser
        }
        .store(in: &cancellabels)
    }
    
}
