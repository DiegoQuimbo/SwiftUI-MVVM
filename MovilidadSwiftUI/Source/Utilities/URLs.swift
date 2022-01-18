//
//  URLs.swift
//  MovilidadUK
//
//  Created by Diego Quimbo on 4/1/22.
//

import Foundation

struct URLs {
    
    static var baseURL : URL = URL(string: "https://deshazo-api.dev.belovedrobot.com/api/")!
    static let baseAuthURL = "\(baseURL)auth/m/"
    
    struct Auth {
        static let login = "\(baseAuthURL)sign-in"
    }
}
