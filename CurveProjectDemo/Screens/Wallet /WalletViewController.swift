//
//  WalletViewController.swift
//  CurveProjectDemo
//
//  Created by Sam Watts on 18/05/2018.
//  Copyright © 2018 Sam Watts. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class WalletViewController: BaseViewController {

    @available(iOS, unavailable, message: "init() is unavailable, use init(coordinatorDelegate:) instead")
    override init() { fatalError() }

    private weak var coordinatorDelegate: WalletViewControllerCoordinatorDelegate?

    private let cardAndActionsView: CardAndActionsView = {
        let cardAndActionsView = CardAndActionsView()
        return cardAndActionsView
    }()

    private let transactionsTableView: UITableView = {
        let transactionsTableView = UITableView(frame: .zero, style: .plain)
        transactionsTableView.translatesAutoresizingMaskIntoConstraints = false
        transactionsTableView.registerCell(TransactionTableViewCell.self)
        return transactionsTableView
    }()

    init(coordinatorDelegate: WalletViewControllerCoordinatorDelegate) {
        self.coordinatorDelegate = coordinatorDelegate

        super.init()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(cardAndActionsView)
        view.addSubview(transactionsTableView)

        //cards pinned to top, height based on card width
        NSLayoutConstraint.activate([
            cardAndActionsView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: .verticalMargin),
            cardAndActionsView.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: .creditCardWidthRelativeToSuperview),
            cardAndActionsView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
        ])

        //table view taking up the remaining bottom space
        NSLayoutConstraint.activate([
            transactionsTableView.topAnchor.constraint(equalTo: cardAndActionsView.bottomAnchor, constant: .verticalMargin),
            transactionsTableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            transactionsTableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            transactionsTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])

        setupViewBindings()
    }

    private func setupViewBindings() {
        cardAndActionsView
            .buttonA
            .rx.tap
            .subscribe(onNext: { [weak self] in
                guard let `self` = self else { return }
                self.coordinatorDelegate?.buttonATapped(from: self)
            })
            .disposed(by: disposeBag)

        cardAndActionsView
            .buttonB
            .rx.tap
            .subscribe(onNext: { [weak self] in
                guard let `self` = self else { return }
                self.coordinatorDelegate?.buttonBTapped(from: self)
            })
            .disposed(by: disposeBag)

        cardAndActionsView
            .buttonC
            .rx.tap
            .subscribe(onNext: { [weak self] in
                guard let `self` = self else { return }
                self.coordinatorDelegate?.buttonCTapped(from: self)
            })
            .disposed(by: disposeBag)
    }
}
