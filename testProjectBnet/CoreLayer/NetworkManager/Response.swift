//
//  NewSession.swift
//  testProjectBnet
//
//  Created by Загид Гусейнов on 24.09.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import Foundation

struct Response<T: Codable>: Codable {
    var status: Int
    var data: T
    
}
