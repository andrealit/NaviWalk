//
//  AlertPresenter.swift
//  NaviWalk
//
//  Created by Andrea Tongsak on 7/28/19.
//  Copyright © 2019 Andrea Tongsak. All rights reserved.
//

import UIKit

protocol AlertPresenter {
}

extension AlertPresenter where Self: UIViewController {
    func showAlert(message: String) {
        let alertController = UIAlertController(
            title: nil,
            message: message,
            preferredStyle: .alert)
        alertController.addAction(UIAlertAction(
            title: nil,
            style: .default,
            handler: nil))
        present(alertController, animated: true, completion: nil)
        alertController.view.tintColor = .red
    }
}
