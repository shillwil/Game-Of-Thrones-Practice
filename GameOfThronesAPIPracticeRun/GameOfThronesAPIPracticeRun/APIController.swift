//
//  APIController.swift
//  GameOfThronesAPIPracticeRun
//
//  Created by Alex Shillingford on 8/6/19.
//  Copyright © 2019 Alex Shillingford. All rights reserved.
//

import Foundation

class APIController {
    let baseURL = URL(string: "https://www.anapioficeandfire.com/api")!
    var characterResults: [Character] = []
    var houseResults: [House] = []
    
    enum HTTPMethod: String {
        case get = "GET"
        case put = "PUT"
        case post = "POST"
        case delete = "DELETE"
    }
    
    func fetchAllCharacters(completion: @escaping (Error?) -> Void) {
        let fetchCharactersURL = baseURL.appendingPathComponent("characters")
        var request = URLRequest(url: fetchCharactersURL)
        request.httpMethod = HTTPMethod.get.rawValue
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        URLSession.shared.dataTask(with: request) { (data, _, error) in
            if let error = error {
                print("Could not decode data: \(error)")
                completion(error)
            }
            
            guard let data = data else {
                completion(NSError())
                return
            }
            
            do {
                self.characterResults = try JSONDecoder().decode([Character].self, from: data)
            } catch {
                print("Could not decode json data")
                return
            }
            
            completion(nil)
        }.resume()
    }
}
