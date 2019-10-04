//
//  GetEntryService.swift
//  testProjectBnet
//
//  Created by Загид Гусейнов on 30.09.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import Foundation

protocol IGetEntriesService: class {
    func showEntry(completion: @escaping (Result<[Entry]>) -> Void)
}

class GetEntriesService: IGetEntriesService {
    let networkManager: InetworkManager = NetworkManager()
    
    func showEntry(completion: @escaping (Result<[Entry]>) -> Void) {
        let getEntriesService = EntryRequest()
        
        networkManager.perform(with: getEntriesService) { (result: Result<Response<[[Entry]]>>) in
            switch result {
            case .succes(let response):
                completion(Result.succes(response.data.flatMap { $0 }))
            case .error(let error):
                completion(Result.error(error))
            }
        }
    }
}
