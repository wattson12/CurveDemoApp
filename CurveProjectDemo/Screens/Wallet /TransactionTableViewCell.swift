//
//  TransactionTableViewCell.swift
//  CurveProjectDemo
//
//  Created by Sam Watts on 19/05/2018.
//  Copyright © 2018 Sam Watts. All rights reserved.
//

import UIKit

class TransactionTableViewCell: UITableViewCell {

    struct ViewState {
        let merchantName: String
        let categoryImage: UIImage?
        let categoryName: String
        let price: NSAttributedString
    }

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    private let merchantNameLabel: UILabel = {
        let merchantNameLabel = UILabel()
        merchantNameLabel.translatesAutoresizingMaskIntoConstraints = false
        merchantNameLabel.numberOfLines = 0
        return merchantNameLabel
    }()

    private let categoryIconView: UIImageView = {
        let categoryIconView = UIImageView()
        categoryIconView.translatesAutoresizingMaskIntoConstraints = false
        categoryIconView.backgroundColor = .loadingBackground
        return categoryIconView
    }()

    private let categoryLabel: UILabel = {
        let categoryLabel = UILabel()
        categoryLabel.translatesAutoresizingMaskIntoConstraints = false
        return categoryLabel
    }()

    private let priceLabel: UILabel = {
        let priceLabel = UILabel()
        priceLabel.translatesAutoresizingMaskIntoConstraints = false
        priceLabel.setContentCompressionResistancePriority(.required, for: .horizontal)
        return priceLabel
    }()

    private func commonInit() {

        [merchantNameLabel, categoryIconView, categoryLabel, priceLabel].forEach(contentView.addSubview(_:))

        //merchant name pinned to top left, kept to the left of price
        NSLayoutConstraint.activate([
            merchantNameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: .horizontalCellMargin),
            merchantNameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: .verticalCellMargin),
            merchantNameLabel.trailingAnchor.constraint(lessThanOrEqualTo: priceLabel.leadingAnchor, constant: -.horizontalCellMargin)
        ])

        //category icon and label below merchant, and to the left of price, pinned to bottom of cell
        NSLayoutConstraint.activate([
            categoryIconView.topAnchor.constraint(equalTo: merchantNameLabel.lastBaselineAnchor, constant: .verticalCellMargin),
            categoryIconView.leadingAnchor.constraint(equalTo: merchantNameLabel.leadingAnchor),
            categoryIconView.bottomAnchor.constraint(lessThanOrEqualTo: contentView.bottomAnchor, constant: -.verticalCellMargin),

            categoryIconView.heightAnchor.constraint(equalToConstant: 20),
            categoryIconView.widthAnchor.constraint(equalToConstant: 20),

            categoryLabel.leadingAnchor.constraint(equalTo: categoryIconView.trailingAnchor, constant: .horizontalCellMargin),
            categoryLabel.centerYAnchor.constraint(equalTo: categoryIconView.centerYAnchor),
            categoryLabel.trailingAnchor.constraint(lessThanOrEqualTo: priceLabel.leadingAnchor, constant: -.horizontalCellMargin)
        ])

        //price pinned to right edge, centered vertically
        NSLayoutConstraint.activate([
            priceLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -.horizontalCellMargin),
            priceLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ])

        //give the cell a minimum height to stop shrinking to fit small contents
        NSLayoutConstraint.activate([
            contentView.heightAnchor.constraint(greaterThanOrEqualToConstant: .minimumTappableDimension)
        ])
    }

    func setViewState(_ viewState: ViewState) {
        merchantNameLabel.text = viewState.merchantName
        categoryIconView.image = viewState.categoryImage
        categoryLabel.text = viewState.categoryName
        priceLabel.attributedText = viewState.price
    }
}
