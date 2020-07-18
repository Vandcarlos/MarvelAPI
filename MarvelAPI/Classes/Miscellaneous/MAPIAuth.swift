//
//  MAPIAuth.swift
//  MarvelAPI
//
//  Created by Vandcarlos Mouzinho Sandes Junior on 08/07/20.
//

import Foundation
import func SwiftHash.MD5

class MAPIAuth {

    private init() {}
    static let shared = MAPIAuth()

    var authQuery: [URLQueryItem] {
        guard let apiKeys = MarvelAPI.shared.apiKeys else {
            debugPrint("Api keys not set")
            return []
        }

        let timestamp = Date().timeIntervalSince1970.description
        let hash = MD5(timestamp + apiKeys.private + apiKeys.public).lowercased()

        return [
            URLQueryItem(name: "ts", value: timestamp),
            URLQueryItem(name: "hash", value: hash),
            URLQueryItem(name: "apikey", value: apiKeys.public)
        ]
    }

}
