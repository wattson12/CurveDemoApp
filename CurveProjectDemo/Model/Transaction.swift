//
//  Transaction.swift
//  CurveProjectDemo
//
//  Created by Sam Watts on 19/05/2018.
//  Copyright © 2018 Sam Watts. All rights reserved.
//

import Foundation

enum Category: String, Codable {
    case groceries
    case general
    case transport
}

struct Transaction: Codable {
    let merchantName: String
    let category: Category
    let currency: String
    let value: String
}
