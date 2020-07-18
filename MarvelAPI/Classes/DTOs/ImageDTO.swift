//
//  ImageDTO.swift
//  MarvelAPI
//
//  Created by Vandcarlos Mouzinho Sandes Junior on 08/07/20.
//

import Foundation

struct ImageDTO: Codable {

    let path: String
    let `extension`: String

}

extension ImageDTO {

    var url: URL? {
        URL(string: "\(path).\(self.extension)")
    }

}
