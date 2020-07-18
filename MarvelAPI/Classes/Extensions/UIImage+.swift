//
//  UIImage+.swift
//  MarvelAPI
//
//  Created by Vandcarlos Mouzinho Sandes Junior on 08/07/20.
//

import UIKit

extension UIImage {

    convenience init?(url: URL?) {
        guard let url = url else { return nil }
        guard let data = try? Data(contentsOf: url) else { return nil }
        self.init(data: data)
    }

}
