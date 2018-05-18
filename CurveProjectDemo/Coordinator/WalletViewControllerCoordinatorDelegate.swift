//
//  WalletViewControllerCoordinatorDelegate.swift
//  CurveProjectDemo
//
//  Created by Sam Watts on 18/05/2018.
//  Copyright © 2018 Sam Watts. All rights reserved.
//

import Foundation

protocol WalletViewControllerCoordinatorDelegate: class {
    func buttonATapped(from walletViewController: WalletViewController)
    func buttonBTapped(from walletViewController: WalletViewController)
    func buttonCTapped(from walletViewController: WalletViewController)
}

extension AppCoordinator: WalletViewControllerCoordinatorDelegate {

    func buttonATapped(from walletViewController: WalletViewController) {
        print(#function)
    }

    func buttonBTapped(from walletViewController: WalletViewController) {
        print(#function)
    }

    func buttonCTapped(from walletViewController: WalletViewController) {
        print(#function)
    }
}
