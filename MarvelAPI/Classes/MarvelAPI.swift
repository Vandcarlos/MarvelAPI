//
//  MarvelAPI.swift
//  MarvelAPI
//
//  Created by Vandcarlos Mouzinho Sandes Junior on 08/07/20.
//

import Foundation
import Network

open class MarvelAPI {

    private init() {}
    public static let shared = MarvelAPI()

    let url = "https://gateway.marvel.com/v1/public/"
    var apiKeys: MAPIKeys?

    static public func configure(apiKeys: MAPIKeys) {
        MarvelAPI.shared.apiKeys = apiKeys
    }

}
