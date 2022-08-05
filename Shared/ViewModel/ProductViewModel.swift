//
//  ProductViewModel.swift
//  mvvm challenge meli (iOS)
//
//  Created by Jonathan Goyes on 4/08/22.
//

import Foundation

class ProductViewModel: ObservableObject {
    
    var apiUrl = "\(Environment.API_MERCADO_LIBRE)items"
    var id: String
    @Published var product: Product?
    
    init(id: String) {
        self.id = id
        getProductDetail()
    }
    
    func getProductDetail() {
       
        guard let gUrl = URL(string: "\(apiUrl)/\(id)") else { return }
        
        URLSession.shared.dataTask(with: gUrl) { (data, response, error) in
              if let error = error {
                print("Error: \(error)")
                return
              }
            guard let d = data, error == nil ,let res = response as? HTTPURLResponse else { return }
        
            if (res.statusCode == 200) {
                do {
                    let result = try JSONDecoder().decode(Product.self, from: d)
                    print("Product \(result)")
                    
                    DispatchQueue.main.async { [weak self] in
                        self?.product = result
                   }
                } catch let e {
                    print("Error: \(e)")
                }
            }
        }.resume()
    }
    
    
    
}
