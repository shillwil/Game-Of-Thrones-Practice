//
//  Result.swift
//  GameOfThronesAPIPracticeRun
//
//  Created by Alex Shillingford on 8/6/19.
//  Copyright © 2019 Alex Shillingford. All rights reserved.
//

import Foundation

struct Character: Codable {
    let name: String
    let gender: String
    let culture: String
    let born: String
    let died: String
    let allegiances: [String]
    let playedBy: [String]
}

struct House: Codable {
    let name: String
    let region: String
    let coatOfArms: String
}
