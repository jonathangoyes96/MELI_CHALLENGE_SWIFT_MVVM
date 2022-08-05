//
//  Picture.swift
//  mvvm challenge meli (iOS)
//
//  Created by Jonathan Goyes on 4/08/22.
//

import Foundation
struct Picture: Codable, Identifiable {
    let id: String?
    let url: String?
    let secureURL: String?
    let size, maxSize, quality: String?
}
