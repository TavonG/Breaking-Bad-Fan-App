//
//  BreakingBadData.swift
//  BreakingBadApp
//
//  Created by Tavon Gibbs on 8/11/21.
//

import Foundation

struct characters: Codable {
    let id: Int
    let name: String
    let img: Image
    let status: String
    let nickname: String
    
}

struct episodes: Codable {
    let id: Int
    let title: String
    let season: Int
    let epsiode: Int
    
}
