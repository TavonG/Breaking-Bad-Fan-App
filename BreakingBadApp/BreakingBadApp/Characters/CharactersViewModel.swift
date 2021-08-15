//
//  CharactersViewModel.swift
//  BreakingBadApp
//
//  Created by Tavon Gibbs on 8/12/21.
//

import SwiftUI
import Combine

final class CharactersViewModel: ObservableObject {
    private let api = API()
    private var subscriptions = Set<AnyCancellable>()
    
    @Published var error: API.Error? = nil
    @Published var characterd: [Character] = []
    
}
