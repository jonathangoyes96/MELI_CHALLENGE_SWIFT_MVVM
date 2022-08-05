//
//  Shipping.swift
//  mvvm challenge meli (iOS)
//
//  Created by Jonathan Goyes on 4/08/22.
//

import Foundation
struct Shipping: Codable {
    let freeShipping: Bool?
    let mode: String?
    let logisticType: String?
    let storePickUp: Bool?
}
