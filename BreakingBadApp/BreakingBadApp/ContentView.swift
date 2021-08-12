//
//  ContentView.swift
//  BreakingBadApp
//
//  Created by Tavon Gibbs on 8/10/21.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        NavigationView {
            TabView {
                charView()
                    .tabItem {
                        Label("Characters", systemImage: "person.3")
                    }
                EpisodesView()
                    .tabItem {
                        Label("Episodes", systemImage: "list.number")
                    }
                
            }
            .navigationTitle("Breaking Bad Fans")
        }
 
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}


