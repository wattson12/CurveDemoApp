//
//  Requests.swift
//  CurveProjectDemo
//
//  Created by Sam Watts on 19/05/2018.
//  Copyright © 2018 Sam Watts. All rights reserved.
//

import Foundation

extension URLRequest {

    static var fetchTransactions: URLRequest {
        guard let url = URL(string: "http://localhost:8080/transactions") else { fatalError() }
        return URLRequest(url: url)
    }
}
