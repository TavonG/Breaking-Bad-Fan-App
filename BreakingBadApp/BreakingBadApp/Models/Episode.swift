//
//  Episode.swift
//  BreakingBadApp
//
//  Created by Tavon Gibbs on 8/12/21.
//

import SwiftUI

struct Episode: Codable, Identifiable {
    let id: Int
    let title: String
    let season: String
    let episode: String
    let characters: [String]
    
    enum CodingKeys: String, CodingKey {
        case title, season, episode, characters
        case id = "episode_id"
    }
    
    static var `default` = Self(id: 0, title: "The", season: "1", episode: "1", characters: ["Mike", "Kim"])
}



