//
//  Character.swift
//  BreakingBadApp
//
//  Created by Tavon Gibbs on 8/12/21.
//

import SwiftUI

struct Character: Codable, Identifiable {
    var id: Int = 0
    var name: String = ""
    var occupation: [String] = []
    var image: String = ""
    var status: String = ""
    var nickname: String = ""
    var appearance: [Int] = []
    var portrayed: String = ""
    
    enum CodingKeys: String, CodingKey {
        case name, occupation, status, nickname, appearance, portrayed
        case id =  "char_id"
        case image = "img"
    }
    
    static var `default` = Self(id: 0, name: "name", occupation: ["occu"], image: "", status: "status", nickname: "nickname", appearance: [1], portrayed: "")
}


