//
//  RMResponseInfo.swift
//  RickAndMorty
//
//  Created by JeanSeb on 07/03/2023.
//

import Foundation

struct RMResponseInfo: Codable {
    let count: Int
    let pages: Int
    let next: String?
    let prev: String?
}
