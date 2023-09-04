//
//  Router.swift
//  CryptoViper
//
//  Created by Musab Bahadır Bayram on 3.09.2023.
//

import Foundation

//talks to -> presenter
//class, protocol
//EntryPoint

protocol AnyRouter {
    static func startExecution() -> AnyRouter
}

class CryptoRouter : AnyRouter {
    static func startExecution() -> AnyRouter {
        
        let router = CryptoRouter()
        
        return router
    }
    
    
}
