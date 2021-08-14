//
//  AppTabbar.swift
//  BreakingBadApp
//
//  Created by Tavon Gibbs on 8/14/21.
//

import SwiftUI



struct AppTabbar: View {
    enum TabItem {
        case characters
        case epsiodes
    }
    
    // create variable to keep track of tab tiem
    @State private var selection: Set<TabItem> = [.characters]
    
    var body: some View {
        NavigationView {
            TabView {
                CharactersView()
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

struct AppTabbar_Previews: PreviewProvider {
    static var previews: some View {
        AppTabbar()
    }
}
