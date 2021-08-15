//
//  Episode.swift
//  BreakingBadApp
//
//  Created by Tavon Gibbs on 8/12/21.
//

import SwiftUI

struct Episode: Codable {
    let episodeID: Int
    let title: String
    let season: Int
    let epsiode: Int
}


enum CodingKeys: String, CodingKey {
    case epsiodeID = "episode_id"
}
