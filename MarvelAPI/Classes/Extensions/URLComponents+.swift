//
//  URLComponents+.swift
//  MarvelAPI
//
//  Created by Vandcarlos Mouzinho Sandes Junior on 08/07/20.
//

import Foundation

extension URLComponents {

    init?(path: String, query: [URLQueryItem]) {
        self.init(string: MarvelAPI.shared.url + path)
        self.queryItems = MAPIAuth.shared.authQuery + query
    }

}
