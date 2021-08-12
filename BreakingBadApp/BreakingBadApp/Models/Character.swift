//
//  Character.swift
//  BreakingBadApp
//
//  Created by Tavon Gibbs on 8/12/21.
//

import SwiftUI

struct Character: Codable, Identifiable {
    let id: UUID
    let name: String
  //  let img: Image
    let status: String
    let nickname: String
}
