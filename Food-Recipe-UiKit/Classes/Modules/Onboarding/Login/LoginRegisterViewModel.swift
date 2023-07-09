//
//  LoginRegisterViewModel.swift
//  Food-Recipe-UiKit
//
//  Created by Ahmed Yamany on 09/07/2023.
//

import Combine

class LoginRegisterViewModel: ObservableObject {
    @Published var name: String = ""
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var confirmPassword: String = ""

    // SignUp User
    @Published var signUpUser: Bool = false
    @Published var acceptTerms: Bool = false
}
