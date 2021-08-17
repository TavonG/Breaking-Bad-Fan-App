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
    @Published var characters: [Character] = []
    
    func fetchCharacters() {
        api
            .fetchCharacters()
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                if case .failure(let error) = completion {
                    self.error = error
                }
            }, receiveValue: { characters in
                self.characters = characters
                self.error = nil
            }).store(in: &subscriptions)
    }
}
