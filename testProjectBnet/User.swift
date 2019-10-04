//
//  User.swift
//  testProjectBnet
//
//  Created by Загид Гусейнов on 24.09.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import Foundation

final class User {
    static let shared = User()
    
    
    private init() {
        
    }
    
    var session: String = ""    
}






