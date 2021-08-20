//
//  EpisodeDetailView.swift
//  BreakingBadApp
//
//  Created by Tavon Gibbs on 8/17/21.
//

import SwiftUI

struct EpisodeDetailView: View {
    let episode: Episode
    
    var body: some View {
        VStack {
            Text(episode.title)
            ForEach(episode.characters, id: \.self) { character in
                Text(character)
                    .font(.caption2)
                    .fontWeight(.semibold)
                    
            }
        }
    }
}

struct EpisodeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EpisodeDetailView(episode: Episode.default)
    }
}
