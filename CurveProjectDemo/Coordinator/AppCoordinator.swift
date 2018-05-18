//
//  AppCoordinator.swift
//  CurveProjectDemo
//
//  Created by Sam Watts on 18/05/2018.
//  Copyright © 2018 Sam Watts. All rights reserved.
//

import UIKit

final class AppCoordinator {

    private let window: UIWindow

    init(window: UIWindow = UIWindow(frame: UIScreen.main.bounds)) {
        self.window = window
        window.backgroundColor = .background
    }

    func start() {
        let cardsAndTransactionViewController = UIViewController()
        let rootNavigationController = UINavigationController(rootViewController: cardsAndTransactionViewController)

        window.rootViewController = rootNavigationController

        window.makeKeyAndVisible()
    }
}
