//
//  SearchViewModel.swift
//  mvvm challenge meli (iOS)
//
//  Created by Jonathan Goyes on 3/08/22.
//

import Foundation
class SearchViewModel: ObservableObject {
    
    let API_URL = "\(Environment.API_MERCADO_LIBRE)sites/MCO/search?q="
    @Published var results = [Result]()
    @Published var searchText: String = "" {
        didSet { isSearchEnabled = (searchText.count > 0) }
    }
    @Published var isSearchEnabled = false
    

    func performSearch() {        
        let search = searchText.addingPercentEncoding(
            withAllowedCharacters: .urlHostAllowed
        ) ?? ""
        print("URL: \("\(API_URL)\(search)")")
        guard let gUrl = URL(string: "\(API_URL)\(search)") else { return }
        
        URLSession.shared.dataTask(with: gUrl) { (data, response, error) in
              if let error = error {
                print("Error: \(error)")
                return
              }
            guard let d = data, error == nil ,let res = response as? HTTPURLResponse else { return }
        
            if (res.statusCode == 200) {
                do {
                    let result = try JSONDecoder().decode(SearchResponse.self, from: d)
                    print("RESULT \(result)")
                    
                    DispatchQueue.main.async { [weak self] in
                        self?.results = result.results ?? []
                   }
                } catch let e {
                    print("Error: \(e)")
                }
            }
        }.resume()
    }
}
