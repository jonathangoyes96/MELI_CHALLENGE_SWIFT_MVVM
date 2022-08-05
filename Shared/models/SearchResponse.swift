//
//  SearchResponse2.swift
//  mvvm challenge meli (iOS)
//
//  Created by Jonathan Goyes on 4/08/22.
//

import Foundation
struct SearchResponse: Codable {
    let siteID, countryDefaultTimeZone, query: String?
    let paging: Paging?
    let results: [Result]?
    
    enum CodingKeys: String, CodingKey {
        case siteID = "site_id"
        case countryDefaultTimeZone = "country_default_time_zone"
        case query, paging, results
    }
}
