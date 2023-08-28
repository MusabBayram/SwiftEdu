//
//  UserSingleton.swift
//  SnapchatClone
//
//  Created by Musab Bahadır Bayram on 28.08.2023.
//

import Foundation


class UserSingleton {
    
    static let sharedUserInfo = UserSingleton()
    
    var email = ""
    var username = ""
    
    private init () {
        
    }
}
