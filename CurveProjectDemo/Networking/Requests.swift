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
        guard let url = URL(string: "https://api.jsonbin.io/b/5b003ce1c83f6d4cc7349919") else { fatalError() }
        return URLRequest(url: url)
    }
}
