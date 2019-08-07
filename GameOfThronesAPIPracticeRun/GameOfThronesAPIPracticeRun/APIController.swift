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
    var searchResults: [Character] = []
    enum HTTPMethod: String {
        case get = "GET"
        case put = "PUT"
        case post = "POST"
        case delete = "DELETE"
    }
    
    func fetchAllCharacters() {
        
    }
}
