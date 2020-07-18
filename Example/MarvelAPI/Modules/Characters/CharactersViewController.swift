//
//  CharactersViewController.swift
//  MarvelAPI_Example
//
//  Created by Vandcarlos Mouzinho Sandes Junior on 08/07/20.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit
import MarvelAPI

class CharactersView: UIView {

    convenience init() {
        self.init(frame: .zero)
        configUI()
    }

    var textView: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()

    var activityIndicatorView: UIActivityIndicatorView = {
        let activityIndicatorView = UIActivityIndicatorView()
        activityIndicatorView.hidesWhenStopped = true
        activityIndicatorView.startAnimating()
        activityIndicatorView.translatesAutoresizingMaskIntoConstraints = false
        return activityIndicatorView
    }()

    func configUI() {
        addSubview(textView)
        addSubview(activityIndicatorView)

        NSLayoutConstraint.activate([
            textView.topAnchor.constraint(equalTo: topAnchor),
            textView.bottomAnchor.constraint(equalTo: bottomAnchor),
            textView.leadingAnchor.constraint(equalTo: leadingAnchor),
            textView.trailingAnchor.constraint(equalTo: trailingAnchor),
            activityIndicatorView.topAnchor.constraint(equalTo: topAnchor),
            activityIndicatorView.bottomAnchor.constraint(equalTo: bottomAnchor),
            activityIndicatorView.leadingAnchor.constraint(equalTo: leadingAnchor),
            activityIndicatorView.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }

}

class CharactersViewController: UIViewController, ModuleItem {

    var name: String = "Characters"

    let worker = MAPICharactersWorker()

    var mainView: CharactersView = {
        let view = CharactersView()
        return view
    }()

    override func viewDidLoad() {
        self.view = mainView
        MAPICharactersWorker(resultsPerPage: 3).perform(page: 0, nameStartsWith: "") { (result) in

            DispatchQueue.main.async { [weak self] in
                self?.mainView.activityIndicatorView.stopAnimating()
                self?.mainView.textView.text = "\(result)"
            }
        }
    }

}
