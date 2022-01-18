//
//  ConnectionManager.swift
//  MovilidadUK
//
//  Created by Diego Quimbo on 4/1/22.
//

import Foundation
import Alamofire

class ConnectionManager: NSObject {
    
    var token = ""
    
    /* SINGLETON */
    static let sharedInstance: ConnectionManager = {
        let instance = ConnectionManager()
        
        return instance
    }()
    
    static let headers: HTTPHeaders = [
        .contentType("application/json"),
        .accept("application/json")
    ]
}
