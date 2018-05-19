//
//  CardAndTransactionsViewModel.swift
//  CurveProjectDemo
//
//  Created by Sam Watts on 19/05/2018.
//  Copyright © 2018 Sam Watts. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

final class CardAndTransactionsViewModel {

    let disposeBag = DisposeBag()

    let transactions: BehaviorRelay<[Transaction]>
    let dataProvider: DataProvider

    init(transactions: [Transaction] = [], dataProvider: DataProvider = URLSession.shared) {
        self.transactions = BehaviorRelay(value: transactions)
        self.dataProvider = dataProvider
    }

    func fetchTransactions() {

        dataProvider
            .fetchResponse(fromURLRequest: .fetchTransactions)
            .convert(to: [Transaction].self)
            .observeOn(MainScheduler.instance)
            .bind(to: transactions)
            .disposed(by: disposeBag)
    }
}
