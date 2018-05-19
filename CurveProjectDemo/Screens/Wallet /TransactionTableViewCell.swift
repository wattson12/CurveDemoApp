//
//  TransactionTableViewCell.swift
//  CurveProjectDemo
//
//  Created by Sam Watts on 19/05/2018.
//  Copyright © 2018 Sam Watts. All rights reserved.
//

import UIKit

class TransactionTableViewCell: UITableViewCell {

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    private func commonInit() {
        backgroundColor = .green
    }
}
