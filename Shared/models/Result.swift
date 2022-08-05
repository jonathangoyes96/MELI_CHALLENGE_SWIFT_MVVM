//
//  Result.swift
//  mvvm challenge meli (iOS)
//
//  Created by Jonathan Goyes on 4/08/22.
//

import Foundation
struct Result: Codable {
    let id: String?
    let siteID: String?
    let title: String?
    let price: Int?
    let currencyID: String?
    let availableQuantity, soldQuantity: Int?
    let buyingMode, listingTypeID, stopTime, condition: String?
    let permalink: String?
    let thumbnail: String?
    let thumbnailID: String?
    let acceptsMercadopago: Bool?
    let installments: Installments?
    let address: Address?
    let shipping: Shipping?
    let categoryID: String?
    let domainID: String?
    
    

}
