//
//  ConnectionManager_Auth.swift
//  MovilidadUK
//
//  Created by Diego Quimbo on 4/1/22.
//

import SwiftyJSON
import Alamofire

class ConnectionManager_Auth: ConnectionManager {
    class func login(user: String, password: String, completion :@escaping (_ success: Bool) -> ()) {
        let parameters = [
            "email": user.trimmingCharacters(in: .whitespaces),
            "password": password.trimmingCharacters(in: .whitespaces)
        ]
        
        AF.request(URLs.Auth.login, method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: ConnectionManager.headers)
            .validate()
            .responseData(completionHandler: { response in
                switch response.result {
                case .success(_):
                    completion(true)
                case .failure( _):
                    completion(false)
                }
            })
    }
}
