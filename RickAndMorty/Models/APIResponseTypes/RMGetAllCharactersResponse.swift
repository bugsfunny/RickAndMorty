//
//  RMGetAllCharactersResponse.swift
//  RickAndMorty
//
//  Created by JeanSeb on 07/03/2023.
//

import Foundation

struct RMGetAllCharactersResponse: Codable {
    let info: RMResponseInfo
    let results: [RMCharacter]
}
