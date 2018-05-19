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

    let transactions: BehaviorRelay<[String]>

    init(transactions: [String]) {
        self.transactions = BehaviorRelay(value: transactions)
    }

    func fetchTransactions() {

    }
}
