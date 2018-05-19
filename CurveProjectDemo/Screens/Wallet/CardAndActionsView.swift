//
//  CardAndActionsView.swift
//  CurveProjectDemo
//
//  Created by Sam Watts on 18/05/2018.
//  Copyright © 2018 Sam Watts. All rights reserved.
//

import UIKit

class CardAndActionsView: BaseView {

    let cardView: UIView = {
        let cardView = UIView()
        cardView.translatesAutoresizingMaskIntoConstraints = false
        cardView.layer.cornerRadius = .cornerRadius
        cardView.backgroundColor = .red
        return cardView
    }()

    let buttonA: UIButton = {
        let buttonA = UIButton(type: .custom)
        buttonA.translatesAutoresizingMaskIntoConstraints = false
        buttonA.backgroundColor = .actionButtonBackground
        buttonA.layer.cornerRadius = CGFloat.minimumTappableDimension / 2
        return buttonA
    }()

    let buttonB: UIButton = {
        let buttonB = UIButton(type: .custom)
        buttonB.translatesAutoresizingMaskIntoConstraints = false
        buttonB.backgroundColor = .actionButtonBackground
        buttonB.layer.cornerRadius = CGFloat.minimumTappableDimension / 2
        return buttonB
    }()

    let buttonC: UIButton = {
        let buttonC = UIButton(type: .custom)
        buttonC.translatesAutoresizingMaskIntoConstraints = false
        buttonC.backgroundColor = .actionButtonBackground
        buttonC.layer.cornerRadius = CGFloat.minimumTappableDimension / 2
        return buttonC
    }()

    override init() {
        super.init()

        addSubview(cardView)
        addSubview(buttonA)
        addSubview(buttonB)
        addSubview(buttonC)

        //card takes up full width and pinned to top
        NSLayoutConstraint.activate([
            cardView.topAnchor.constraint(equalTo: topAnchor),
            cardView.leadingAnchor.constraint(equalTo: leadingAnchor),
            cardView.trailingAnchor.constraint(equalTo: trailingAnchor),
            cardView.widthAnchor.constraint(equalTo: cardView.heightAnchor, multiplier: .creditCardAspectRatio)
        ])

        //then buttons aligned below and pinned to bottom edge
        NSLayoutConstraint.activate([
            buttonA.topAnchor.constraint(equalTo: cardView.bottomAnchor, constant: .verticalMargin),
            buttonB.topAnchor.constraint(equalTo: cardView.bottomAnchor, constant: .verticalMargin),
            buttonC.topAnchor.constraint(equalTo: cardView.bottomAnchor, constant: .verticalMargin),

            buttonA.widthAnchor.constraint(equalToConstant: .minimumTappableDimension),
            buttonA.heightAnchor.constraint(equalToConstant: .minimumTappableDimension),
            buttonB.widthAnchor.constraint(equalToConstant: .minimumTappableDimension),
            buttonB.heightAnchor.constraint(equalToConstant: .minimumTappableDimension),
            buttonC.widthAnchor.constraint(equalToConstant: .minimumTappableDimension),
            buttonC.heightAnchor.constraint(equalToConstant: .minimumTappableDimension),

            buttonA.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -.verticalMargin),
            buttonB.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -.verticalMargin),
            buttonC.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -.verticalMargin),

            buttonA.trailingAnchor.constraint(equalTo: buttonB.leadingAnchor, constant: -.horizontalMargin),
            buttonB.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonC.leadingAnchor.constraint(equalTo: buttonB.trailingAnchor, constant: .horizontalMargin)
        ])
    }
}
