//
//  Installments.swift
//  mvvm challenge meli (iOS)
//
//  Created by Jonathan Goyes on 4/08/22.
//

import Foundation
struct Installments: Codable {
    let quantity: Int?
    let amount: Double?
    let rate: Int?
    let currencyID: String?
}
