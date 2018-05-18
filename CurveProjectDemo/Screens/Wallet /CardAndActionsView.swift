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
        buttonA.layer.cornerRadius = 22
        return buttonA
    }()

    let buttonB: UIButton = {
        let buttonB = UIButton(type: .custom)
        buttonB.translatesAutoresizingMaskIntoConstraints = false
        buttonB.backgroundColor = .actionButtonBackground
        buttonB.layer.cornerRadius = 22
        return buttonB
    }()

    let buttonC: UIButton = {
        let buttonC = UIButton(type: .custom)
        buttonC.translatesAutoresizingMaskIntoConstraints = false
        buttonC.backgroundColor = .actionButtonBackground
        buttonC.layer.cornerRadius = 22
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
            buttonA.topAnchor.constraint(equalTo: cardView.bottomAnchor, constant: 20),
            buttonB.topAnchor.constraint(equalTo: cardView.bottomAnchor, constant: 20),
            buttonC.topAnchor.constraint(equalTo: cardView.bottomAnchor, constant: 20),

            buttonA.widthAnchor.constraint(equalToConstant: 44),
            buttonA.heightAnchor.constraint(equalToConstant: 44),
            buttonB.widthAnchor.constraint(equalToConstant: 44),
            buttonB.heightAnchor.constraint(equalToConstant: 44),
            buttonC.widthAnchor.constraint(equalToConstant: 44),
            buttonC.heightAnchor.constraint(equalToConstant: 44),

            buttonA.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20),
            buttonB.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20),
            buttonC.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20),

            buttonA.trailingAnchor.constraint(equalTo: buttonB.leadingAnchor, constant: -20),
            buttonB.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonC.leadingAnchor.constraint(equalTo: buttonB.trailingAnchor, constant: 20)
        ])
    }
}
