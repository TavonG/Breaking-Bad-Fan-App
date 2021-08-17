//
//  CharacterDetailViewModel.swift
//  BreakingBadApp
//
//  Created by Tavon Gibbs on 8/12/21.
//

import SwiftUI
import Combine

final class CharacterDetailViewModel: ObservableObject {
    private let api = API()
    private var subscriptions = Set<AnyCancellable>()

    @Published var error: API.Error? = nil
    @Published var character: Character = Character()
    
    func fetchCharacter(id: Int) {
        api
            .fetchCharacter(id: id)
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                if case .failure(let error) = completion {
                    self.error = error
                }
            }, receiveValue: { character in
                if let charc = character.first {
                    self.character = charc
                }
                
                self.error = nil
            }).store(in: &subscriptions)
        
    }
    
}
