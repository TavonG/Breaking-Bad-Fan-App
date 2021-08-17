//
//  EpisodesViewModel.swift
//  BreakingBadApp
//
//  Created by Tavon Gibbs on 8/12/21.
//

import SwiftUI
import Combine

final class EpisodesViewModel: ObservableObject {
    private let api = API()
    private var subscriptions = Set<AnyCancellable>()

    @Published var error: API.Error? = nil
    @Published var episodes: [Episode] = []

    func fetchEpisodes() {
        api
            .fetchEpisodes()
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                if case .failure(let error) = completion {
                    self.error = error
                }
            }, receiveValue: { episodes in
                self.episodes = episodes
                
                self.error = nil
            }).store(in: &subscriptions)
    }
    
}
