//
//  NetworkError.swift
//  testProjectBnet
//
//  Created by Загид Гусейнов on 04.10.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import Foundation

enum NetworkErrorType {
    case `default`
    case noConnection
}

struct NetworkError: Error {
    var type: NetworkErrorType
    var description: String
}

