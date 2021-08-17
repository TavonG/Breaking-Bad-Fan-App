//
//  EpisodesView.swift
//  BreakingBadApp
//
//  Created by Tavon Gibbs on 8/10/21.
//

import SwiftUI

struct EpisodesView: View {
    
    var episodes: [Episode] = Episode.self
    var body: some View {
        NavigationView {
            List(episodes, id: \.self) { episode in
                
                
                VStack(alignment: .leading, spacing: 3) {
                    Text(episode.season)
                        .fontWeight(.semibold)
                        .lineLimit(3)
                        .minimumScaleFactor(0.5)
                        .frame(height: 30)
                        .cornerRadius(4)
                    
                    Text(episode.episodeNumber)
                        .fontWeight(.semibold)
                    
                    Text(episode.title)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    
                }
            }
            .navigationTitle("Episodes")
            
        }
    }
    
    struct EpisodesView_Previews: PreviewProvider {
        static var previews: some View {
            EpisodesView()
        }
    }
}
