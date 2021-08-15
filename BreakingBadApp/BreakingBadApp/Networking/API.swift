//
//  API.swift
//  BreakingBadApp
//
//  Created by Tavon Gibbs on 8/14/21.
//

import Combine
import  SwiftUI

struct API {
    // create error
    enum Error: LocalizedError, Identifiable {
        var id: String { localizedDescription }
        
        case addressUnreachable (URL)
        case invalidResponse
        
        var errorDescription: String? {
            switch self {
            case .invalidResponse: return "Not what I needed"
            case.addressUnreachable(let url): return "\(url.debugDescription)"
            }
        }
    }
    
    enum EndPoint {
        static let baseUrl = URL(string: "https://www.breakingbadapi.com/api/")!
        
        
        case characters
        case epsiodes
        
        var url: URL {
            switch self {
            case .characters:
                return EndPoint.baseUrl.appendingPathComponent("/api/characters")
            case .epsiodes:
                return EndPoint.baseUrl.appendingPathComponent("/api/episodes")
            }
        }
        
        static func request(with url: URL) -> URLRequest {
            var request = URLRequest(url: url)
            request.httpMethod = "GET"
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            
            return request
        }
    }
    
    private let decoder = JSONDecoder()
    
    func fetchCharacter() -> AnyPublisher<Character, Error> {
        
        URLSession.shared.dataTaskPublisher(for: EndPoint.request(with: EndPoint.characters.url))
            .map { return $0.data }
            .decode(type: Character.self, decoder: decoder)
            .print()
            .mapError { error in
                switch error {
                case is URLError:
                return Error.addressUnreachable(EndPoint.characters.url)
                default: return Error.invalidResponse
                }
            }
            .print()
            .map { $0 }
            .eraseToAnyPublisher()
    }
}
