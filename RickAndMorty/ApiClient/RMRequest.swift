//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by JeanSeb on 06/03/2023.
//

import Foundation

/// Represents a single API call
final class RMRequest {
    
    private struct Costants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    private let endpoint: RMEndpoint
    private let pathComponent: [String]
    private let queryParameters: [URLQueryItem]
    
    private var urlString: String {
        var string = Costants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if(!pathComponent.isEmpty){
            pathComponent.forEach({string += "/\($0)"})
        }
        
        if(!queryParameters.isEmpty){
            string += "?"
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else {return nil}
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            string += argumentString
        }
        
        return string
    }
    
    public var url: URL? {
        return URL(string: urlString)
    }
    
    public let httpMethod = "GET"
        
    public init(endpoint: RMEndpoint, pathComponent: [String] = [], queryParameters: [URLQueryItem] = []) {
        self.endpoint = endpoint
        self.pathComponent = pathComponent
        self.queryParameters = queryParameters
    }
}

extension RMRequest {
    static let listCharactersRequest = RMRequest(endpoint: .character)
}
