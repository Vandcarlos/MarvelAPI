//
//  CharacterDTO.swift
//  MarvelAPI
//
//  Created by Vandcarlos Mouzinho Sandes Junior on 08/07/20.
//

import Foundation

struct CharacterDTO: Codable {

    let id: Int
    let name: String
    let description: String
    let thumbnail: ImageDTO

}
