////
////  API2.swift
////  BreakingBadApp
////
////  Created by Tavon Gibbs on 8/17/21.
////
//
//import Foundation
//
////
////  ContentView.swift
////  BreakingBadApp
////
////  Created by Tavon Gibbs on 8/10/21.
////
//
//import SwiftUI
//    func loadData() {
//        guard let url = URL(string: "https://www.breakingbadapi.com/api/episodes") else {
//            print("Invalid url")
//            return
//        }
//        
//        let request = URLRequest(url: url)
//        
//        URLSession.shared.dataTask(with: request) { data, respsone, error in
//            if let data = data {
//                if let decodedResponse = try? JSONDecoder().decode(Response.self, from: data) {
//                    DispatchQueue.main.async {
//                        self.episode = decodedResponse.epsidoe
//                    }
//                    
//                    return
//                }
//            }
//            print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
//        }.resume()
//        
//    }
//
//
//
//
//
//
