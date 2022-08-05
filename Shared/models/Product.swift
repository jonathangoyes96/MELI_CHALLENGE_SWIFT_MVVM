//
//  Product.swift
//  mvvm challenge meli (iOS)
//
//  Created by Jonathan Goyes on 4/08/22.
//

import Foundation
struct Product: Codable {
    let id, siteID, title: String?
    let sellerID: Int?
    let categoryID: String?
    let price, basePrice: Int?
    let currencyID: String?
    let initialQuantity, availableQuantity, soldQuantity: Int?
    let buyingMode, listingTypeID, startTime, stopTime: String?
    let condition: String?
    let permalink: String?
    let thumbnailID: String?
    let thumbnail: String?
    let secureThumbnail: String?
    let acceptsMercadopago: Bool?
    let internationalDeliveryMode: String?
    let listingSource: String?
    let status: String?
    let warranty, catalogProductID, domainID: String?
    let automaticRelist: Bool?
    let dateCreated, lastUpdated: String?
    let attributes: [Attribute]?
    let pictures: [Picture]?
    
}
