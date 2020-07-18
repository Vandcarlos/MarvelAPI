//
//  MAPICharacter.swift
//  MarvelAPI
//
//  Created by Vandcarlos Mouzinho Sandes Junior on 08/07/20.
//

import UIKit

public struct MAPICharacter {

    public let id: Int
    public let name: String
    public let description: String
    public let thumbnail: UIImage?

    init(response: CharacterDTO) {
        id = response.id
        name = response.name
        description = response.description
        thumbnail = UIImage(url: response.thumbnail.url)
    }

}
