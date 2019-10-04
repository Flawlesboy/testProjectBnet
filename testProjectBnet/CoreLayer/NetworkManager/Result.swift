//
//  Result.swift
//  testProjectBnet
//
//  Created by Загид Гусейнов on 24.09.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import Foundation

enum Result<T> {
    case succes(T)
    case error(NetworkError)
}
