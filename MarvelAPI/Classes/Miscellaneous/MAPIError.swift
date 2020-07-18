//
//  MAPIError.swift
//  MarvelAPI
//
//  Created by Vandcarlos Mouzinho Sandes Junior on 08/07/20.
//

import Foundation

public enum MAPIError: Error {

    case generic
    case body
    case parse
    case auth
    case internet

    init(error: Error) {
        if let urlError = error as? URLError {
            switch urlError.code {
            case .notConnectedToInternet: self = .internet
            default: self = .generic
            }
        } else {
            self = .generic
        }
    }

}
