//
//  LoginViewModel.swift
//  MovilidadSwiftUI
//
//  Created by Diego Quimbo on 5/1/22.
//

import Foundation
import SwiftUI

final class LoginViewModel: ObservableObject {
    
    @Published var isLoading = false
    
    func login(user: String, password: String, completion: @escaping (Bool) -> Void) {
        isLoading = true
        ConnectionManager_Auth.login(user: user, password: password) { [weak self] success in
            self?.isLoading = false
            completion(success)
        }
    }
}
