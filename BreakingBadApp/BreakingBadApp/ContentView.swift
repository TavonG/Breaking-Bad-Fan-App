//
//  ContentView.swift
//  BreakingBadApp
//
//  Created by Tavon Gibbs on 8/10/21.
//

import SwiftUI


struct ContentView: View {
    
//    @State var data: charactersData
    
//
//    func fetch() {
//         let urlstring = "https://www.breakingbadapi.com/api/characters"
//         let url = URL(string: urlstring)
//
//        URLSession.shared.dataTask(with: url!) {data, _, Error in
//            if let data = data {
//                do {
//                    let decoder = JSONDecoder()
//                    let decodedData = try decoder.decode(charactersData.self, from: data)
//                    self.data = decodedData
//                } catch {
//                    print("Error")
//                }
//            }
//        }
//
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
        VStack {
//            Button("Refresh data") {fetch()}
//            Text("\(data.name)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}


