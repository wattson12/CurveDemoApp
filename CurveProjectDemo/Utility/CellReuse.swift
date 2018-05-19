//
//  CellReuse.swift
//  CurveProjectDemo
//
//  Created by Sam Watts on 19/05/2018.
//  Copyright © 2018 Sam Watts. All rights reserved.
//

import UIKit

protocol Reusable {
    static var reuseIdentifier: String { get }
}

extension UITableViewCell: Reusable {

    static var reuseIdentifier: String {
        return self.description()
    }
}

extension UITableView {

    func registerCell<Cell: UITableViewCell>(_ cellType: Cell.Type) {
        self.register(Cell.self, forCellReuseIdentifier: Cell.reuseIdentifier)
    }
}
