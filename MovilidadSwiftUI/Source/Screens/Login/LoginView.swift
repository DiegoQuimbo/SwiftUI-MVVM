//
//  LoginView.swift
//  MovilidadSwiftUI
//
//  Created by Diego Quimbo on 5/1/22.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject private var vM = LoginViewModel()
    
    @State private var username = ""
    @State private var password = ""
    @State var pushHomeActive = false
    
    var body: some View {
        ZStack {
            NavigationView {
                VStack {
                    NavigationLink(destination: HomeView(), isActive: $pushHomeActive) { EmptyView() }
                    
                    TextFieldBorder(placeHolder: L10n.Login.Username.placeholder, value: $username)
                    SecureField(L10n.Login.Password.placeholder, text: $password)
                        .frame(height: 40, alignment: .leading)
                        .textFieldStyle(.roundedBorder)
                    
                    Button(L10n.Login.Button.text, action: login)
                        .padding(40)
                }
                .padding(20)
            }
            
            if vM.isLoading { LoadingView() }
        }
    }
    
    func login() {
        let user = "technician3@test.com"
        let password = "test"
        
        vM.login(user: user, password: password) { [self] success in
            pushHomeActive = true
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

struct TextFieldBorder: View {
    var placeHolder: String
    @Binding var value: String
    
    var body: some View {
        TextField(placeHolder, text: $value)
            .frame(height: 40, alignment: .leading)
            .textFieldStyle(.roundedBorder)
    }
}
