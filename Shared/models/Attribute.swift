//
//  Attribute.swift
//  mvvm challenge meli (iOS)
//
//  Created by Jonathan Goyes on 4/08/22.
//

import Foundation
struct Attribute: Codable {
    let id, name, valueID, valueName: String?
    
    enum CodingKeys: String, CodingKey {
        case valueName = "value_name"
        case valueID = "value_id"
        case id, name
    }
}
