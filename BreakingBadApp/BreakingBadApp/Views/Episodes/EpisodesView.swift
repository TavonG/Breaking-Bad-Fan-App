//
//  EpisodesView.swift
//  BreakingBadApp
//
//  Created by Tavon Gibbs on 8/10/21.
//

import SwiftUI

struct EpisodesView: View {
    @StateObject var model = EpisodesViewModel()
    
    var body: some View {
        ScrollView {
            episodeItems
                .navigationTitle("Episodes")
        }.onAppear {
            model.fetchEpisodes()
        }
    }
    
    var episodeItems: some View {
        ForEach(model.episodes) { episode in
            NavigationLink(
                destination: EpisodeDetailView(episode: episode),
                label: {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("season \(episode.season)")
                            Text("episode \(episode.episode)")
                            Text(episode.title)
                            
                        }
                        .padding(.horizontal, 10)
                        .padding(.bottom, 10)
                        
                        Spacer()
                        
                    }
                    .frame(minWidth: 0, maxWidth: .infinity)

                }).buttonStyle(PlainButtonStyle())
        }
    }
}

struct EpisodesView_Previews: PreviewProvider {
    static var previews: some View {
        EpisodesView()
    }
}

