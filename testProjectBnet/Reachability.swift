//
//  Reachability.swift
//  testProjectBnet
//
//  Created by Загид Гусейнов on 02.10.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import Foundation

public class Reachability {
    
    class func isConnectedToNetwork()->Bool{
        
        var Status:Bool = false
        let url = URL(string: "https://bnet.i-partner.ru/testAPI/")
        var request = URLRequest(url: url!)
        request.httpMethod = "HEAD"
        request.cachePolicy = NSURLRequest.CachePolicy.reloadIgnoringLocalAndRemoteCacheData
        request.timeoutInterval = 10.0
        let session = URLSession.shared
        
        session.dataTask(with: request, completionHandler: {(data, response, error) in
            print("data \(data)")
            print("response \(response)")
            print("error \(error)")
            
            if let httpResponse = response as? HTTPURLResponse {
                print("httpResponse.statusCode \(httpResponse.statusCode)")
                if httpResponse.statusCode == 200 {
                    Status = true
                }
            }
            
        }).resume()
        
        
        return Status
    }
}
