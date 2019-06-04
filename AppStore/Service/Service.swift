//
//  Service.swift
//  AppStore
//
//  Created by Nhan Nguyen on 6/1/19.
//  Copyright © 2019 Nhan Nguyen. All rights reserved.
//

import Foundation

class Service {
    static let shared = Service()
    
    func fetchApps() {
        let urlString = "https://itunes.apple.com/search?term=instagram&entity=software"
        guard let url = URL(string: urlString) else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, resp, err) in
            if let err = err {
                print("Failed to fetch apps:", err)
                return
            }
            
            guard let data = data else {
                return
            }
            
            do {
                let searchResult = try JSONDecoder().decode(SearchResult.self, from: data)

            } catch let error as NSError {
                print("Failed to decode json:", error)
            }
            
            }.resume()
    }
}
