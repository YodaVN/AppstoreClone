//
//  SearchResult.swift
//  AppStore
//
//  Created by Nhan Nguyen on 5/30/19.
//  Copyright © 2019 Nhan Nguyen. All rights reserved.
//

import Foundation

struct SearchResult: Decodable {
    let resultCount: Int
    let results: [Result]
}

struct Result: Decodable {
    let trackName: String
    let primaryGenreName: String
    let averageUserRating: Float?
}
