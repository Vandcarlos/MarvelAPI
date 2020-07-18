//
//  MAPICharactersWorker.swift
//  MarvelAPI
//
//  Created by Vandcarlos Mouzinho Sandes Junior on 08/07/20.
//

import Foundation
import UIKit

open class MAPICharactersWorker {

    private let path = "characters"

    var resultsPerPage: Int

    public init(resultsPerPage: Int) {
        self.resultsPerPage = resultsPerPage
    }

    public convenience init() {
        self.init(resultsPerPage: 20)
    }

    public func perform(
        page: Int,
        nameStartsWith: String,
        completion: @escaping (Result<[MAPICharacter], MAPIError>
        ) -> Void) {
        var query = [
            URLQueryItem(name: "limit", value: String(resultsPerPage)),
            URLQueryItem(name: "offset", value: String(resultsPerPage * page))
        ]

        if !nameStartsWith.isEmpty {
            query.append(URLQueryItem(name: "nameStartsWith", value: nameStartsWith))
        }

        MAPIRequest.shared.request(
            path: path,
            method: .get,
            query: query,
            dto: CharacterDataWrapperDTO.self
        ) { result in
            switch result {
            case .success(let response):
                let characters = response.data.results.map { MAPICharacter(response: $0) }
                completion(.success(characters))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }

}
