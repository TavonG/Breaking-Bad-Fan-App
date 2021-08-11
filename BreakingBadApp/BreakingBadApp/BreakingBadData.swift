//
//  BreakingBadData.swift
//  BreakingBadApp
//
//  Created by Tavon Gibbs on 8/11/21.
//

import Foundation

//
//struct FanData: Decodable {
//    var character: charactersData
//    var ep: episodeData
//
//    enum CodingKeys: String, CodingKey {
//        case character = "char_id"
//        case ep = "epsidoe_id"
//    }
//
//
struct charactersData: Codable, Identifiable {
    let id: Int
    let name: String
    //let img: Image
    let status: String
    let nickname: String
    
}

class Api {
    func getChar() {
        guard let url = URL(string: "https://www.breakingbadapi.com/api/characters") else {return }
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let char = try! JSONDecoder().decode([charactersData].self, from: data!)
            print(char)
        }
        .resume()
    }
}

struct episodeData: Codable {
    let id: Int
    let title: String
    let season: Int
    let epsiode: Int
    
}



