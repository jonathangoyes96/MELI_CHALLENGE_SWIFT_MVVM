//
//  Paging.swift
//  mvvm challenge meli (iOS)
//
//  Created by Jonathan Goyes on 4/08/22.
//

import Foundation
struct Paging: Codable {
    let total: Int?
    let primaryResults: Int?
    let offset: Int?
    let limit: Int?
}
