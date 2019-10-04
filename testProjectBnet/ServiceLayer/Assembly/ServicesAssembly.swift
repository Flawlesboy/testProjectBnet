//
//  ServicesAssembly.swift
//  testProjectBnet
//
//  Created by Загид Гусейнов on 24.09.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import Foundation

protocol IServicesAssembly {
    var newSessionService: INewSessionService { get }
    var addEntryService: IAddEntryService { get }
    var getEntriesService: IGetEntriesService { get }
}

class ServicesAssembly: IServicesAssembly {
    lazy var newSessionService: INewSessionService = NewSessionService()
    lazy var addEntryService: IAddEntryService = AddEntryService()
    lazy var getEntriesService: IGetEntriesService = GetEntriesService()
}
