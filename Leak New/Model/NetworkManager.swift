//
//  NetworkManager.swift
//  Leak New
//
//  Created by Vũ Chiến Thắng on 03/01/2023.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var posts = [Post]()
    func fetchData() {
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error == nil {
                    if let safeData = data {
                        do {
                            let result = try JSONDecoder().decode(Result.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = result.hits
                            }
                        }
                        catch {
                            print(error)
                        }
                        
                    }
                }
            }
            task.resume()
        }
    }
}
