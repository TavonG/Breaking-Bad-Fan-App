//
//  ContentView.swift
//  BreakingBadApp
//
//  Created by Tavon Gibbs on 8/10/21.
//

import SwiftUI

struct Response: Codable {
    var epsidoe: [Episodes]
}

struct Episodes: Codable {
    var titel: String
    var season: Int
    var epsisode: Int
}


struct ContentView: View {
    
    @State var episode = [Episodes]()
    var body: some View {
        List(episode, id: \.titel) { item in
            VStack(alignment: .leading) {
                Text(item.titel)
                    .font(.headline)
                
                Text(item.titel)
            }
        }
        .onAppear(perform: loadData)
        
    }
    
    func loadData() {
        guard let url = URL(string: "https://www.breakingbadapi.com/api/episodes") else {
            print("Invalid url")
            return
        }
        
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { data, respsone, error in
            if let data = data {
                if let decodedResponse = try? JSONDecoder().decode(Response.self, from: data) {
                    DispatchQueue.main.async {
                        self.episode = decodedResponse.epsidoe
                    }
                    
                    return
                }
            }
            print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
        }.resume()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}


