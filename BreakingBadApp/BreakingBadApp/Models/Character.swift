//
//  Character.swift
//  BreakingBadApp
//
//  Created by Tavon Gibbs on 8/12/21.
//

import SwiftUI

struct Character: Codable {
    let characteriID: Int
    let name: String
    let occupation: [String]
    let image: String
    let status: String
    let nickname: String
    let appearance: [Int]
    let portrayed: String
}

enum Status: String, Codable {
    case alive = "Alive"
    case deceased = "Deceased"
    case presumeDead = "Presumed dead"
    case unkown = "Unknown"
    
    
    enum CodingKeys: String, CodingKey {
        case name, occupation, status, nickname, appearance, portrayed
        case characterID =  "char_id"
        case image = "img"
    }
}
