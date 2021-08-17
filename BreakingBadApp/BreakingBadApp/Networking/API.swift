//
//  API.swift
//  BreakingBadApp
//
//  Created by Tavon Gibbs on 8/14/21.
//

import Combine
import  SwiftUI

struct API {
    
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
        static let baseUrl = URL(string: "https://www.breakingbadapi.com")!
        
        case characters
        case character(Int)
        case episodes
        
        var url: URL {
            switch self {
            case .characters:
                return EndPoint.baseUrl.appendingPathComponent("/api/characters")
            case .character(let id):
                return EndPoint.baseUrl.appendingPathComponent("/api/characters/\(id)")
            case .episodes:
                return EndPoint.baseUrl.appendingPathComponent("/api/episodes")
            }
        }
        
        // creates a url request
        static func request(with url: URL) -> URLRequest {
            var request = URLRequest(url: url)
            request.httpMethod = "GET"
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            
            return request
        }
    }
    
    private let decoder = JSONDecoder()
    
    // fetches characters by id
    func fetchCharacter(id: Int) -> AnyPublisher<[Character], Error> {
        
        URLSession.shared.dataTaskPublisher(for: EndPoint.request(with: EndPoint.character(id).url))
            .map { return $0.data }
            .decode(type: [Character].self, decoder: decoder)
            .mapError { error in
                switch error {
                case is URLError:
                    return Error.addressUnreachable(EndPoint.character(id).url)
                default: return Error.invalidResponse
                }
            }
            .map { $0 }
            .eraseToAnyPublisher()
        
    }
    
    // fetches all characters
    func fetchCharacters() -> AnyPublisher<[Character], Error> {
        URLSession.shared.dataTaskPublisher(for: EndPoint.request(with: EndPoint.characters.url))
            .map { return $0.data }
            .decode(type: [Character].self, decoder: decoder)
            .mapError { error in
                switch error {
                case is URLError:
                    return Error.addressUnreachable(EndPoint.characters.url)
                default: return Error.invalidResponse
                }
            }
            .map { $0 }
            .eraseToAnyPublisher()
    }
    
    // fetches all epsiodes
    func fetchEpisodes() -> AnyPublisher<[Episode], Error> {
        URLSession.shared.dataTaskPublisher(for: EndPoint.request(with: EndPoint.episodes.url))
            .map { return $0.data }
            .decode(type: [Episode].self, decoder: decoder)
            .mapError { error in
                switch error {
                case is URLError:
                    return Error.addressUnreachable(EndPoint.episodes.url)
                default: return Error.invalidResponse
                }
            }
            .map { $0 }
            .eraseToAnyPublisher()
    }
    
}
