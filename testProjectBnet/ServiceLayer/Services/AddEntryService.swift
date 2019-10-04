//
//  AddEntryService.swift
//  testProjectBnet
//
//  Created by Загид Гусейнов on 29.09.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import Foundation

protocol IAddEntryService: class {
    func loadText(text: String, completion: @escaping (Result<AddEntry>) -> Void)
}

class AddEntryService: IAddEntryService {    
    let networkManager: InetworkManager = NetworkManager()
    
    func loadText(text: String, completion: @escaping (Result<AddEntry>) -> Void) {        
        let addEntryService = AddEntryRequest(text: text)
        
        networkManager.perform(with: addEntryService) { (result: Result<Response<AddEntry>>) in
            switch result {
            case .succes(let response):
                completion(Result.succes(response.data))
            case .error(let error):
                completion(Result.error(error))
            }
        }
    }
    
}
