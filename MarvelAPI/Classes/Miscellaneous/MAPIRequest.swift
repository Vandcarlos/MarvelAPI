//
//  MAPIRequest.swift
//  MarvelAPI
//
//  Created by Vandcarlos Mouzinho Sandes Junior on 08/07/20.
//

import Foundation

class MAPIRequest {

    private init() {}

    static let shared = MAPIRequest()

    enum HTTPMethod: String {

        case get = "GET"

    }

    private func mountURLRequest(path: String, method: HTTPMethod, query: [URLQueryItem]) -> URLRequest? {
        guard let url = URLComponents(path: path, query: query)?.url else { return nil }
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = method.rawValue
        return urlRequest
    }

    func request<T: Codable>(
        path: String,
        method: HTTPMethod,
        query: [URLQueryItem],
        dto: T.Type,
        completion: @escaping (Result<T, MAPIError>) -> Void
    ) {
        guard let request = mountURLRequest(path: path, method: method, query: query) else {
            completion(.failure(.auth))
            return
        }

        URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let error = error {
                completion(.failure(MAPIError(error: error)))
                return
            }

            guard let data = data else {
                completion(.failure(.body))
                return
            }

            do {
                let response = try JSONDecoder().decode(dto, from: data)
                completion(.success(response))
            } catch let error {
                debugPrint(error)
                completion(.failure(.parse))
            }
        }.resume()
    }

}
