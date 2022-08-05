//
//  SearchResultViewModel.swift
//  mvvm challenge meli (iOS)
//
//  Created by Jonathan Goyes on 4/08/22.
//
import Foundation

struct SearchResultViewModel {
    
    let model: Result
    
    var name: String {
        model.title ?? ""
    }
    
    var imgUrl: URL? {
        URL(string: model.thumbnail ?? "")
    }
    
    var fullPrice: String {
        "$\(model.price ?? 0)"
    }
}
