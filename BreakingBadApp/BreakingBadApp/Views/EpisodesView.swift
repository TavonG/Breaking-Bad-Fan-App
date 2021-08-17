//
//  EpisodesView.swift
//  BreakingBadApp
//
//  Created by Tavon Gibbs on 8/10/21.
//

import SwiftUI

struct EpisodesView: View {
    
   // var episodes: [Episode]
    var body: some View {
        NavigationView {
            List(0..<20) { item in
                
                
                VStack(alignment: .leading, spacing: 3) {
                    Text("Season # ")
                        .fontWeight(.semibold)
                        .lineLimit(3)
                        .minimumScaleFactor(0.5)
                        .frame(height: 30)
                        .cornerRadius(4)
                    
                    Text("Episode # 1")
                        .fontWeight(.semibold)
                    
                    Text("This is the title of the episode")
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
