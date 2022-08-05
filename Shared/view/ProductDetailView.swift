//
//  ProductDetailView.swift
//  mvvm challenge meli (iOS)
//
//  Created by Jonathan Goyes on 4/08/22.
//

import SwiftUI
import ACarousel

struct Item: Identifiable {
    let id = UUID()
    let image: Image
}

let roles = ["Luffy", "Zoro", "Sanji", "Nami", "Usopp", "Chopper", "Robin", "Franky", "Brook"]


struct ProductDetailView: View {
    
    var id: String
    @StateObject var viewModel:ProductViewModel
    let items: [Item] = roles.map { Item(image: Image($0)) }
    
    var body: some View {
        
        ScrollView {
            VStack {
                Text("\(viewModel.product?.title ?? "")").padding(.bottom, 10)
                
                if (viewModel.product != nil) {
                    
                    ACarousel(viewModel.product!.pictures!) { picture in
                        AsyncImage(url: URL(string: picture.url ?? "")) { image in
                            image.resizable().scaledToFit()
                                } placeholder: {
                                    Image(systemName: "camera.fill")
                                }
                                .frame(width: .infinity, height: 300)
                                .cornerRadius(10)
                            }
                            .frame(height: 300)
                    
                }
                Text("Precio").font(.title2.weight(.heavy))
                    .frame(maxWidth: .infinity, alignment: .leading).padding()
                Text("\(viewModel.product?.price ?? 0)")
                    .frame(maxWidth: .infinity, alignment: .leading).padding(.leading, 15)
                Text("Condicion").font(.title2.weight(.heavy))
                    .frame(maxWidth: .infinity, alignment: .leading).padding()
                Text("\(viewModel.product?.condition ?? "")")
                    .frame(maxWidth: .infinity, alignment: .leading).padding(.leading, 15)
                Text("Garantia").font(.title2.weight(.heavy)).frame(maxWidth: .infinity, alignment: .leading).padding()
                Text("\(viewModel.product?.warranty ?? "")")
                    .frame(maxWidth: .infinity, alignment: .leading).padding(.leading, 15)
                Text("Caracteristicas").font(.title2.weight(.heavy)).frame(maxWidth: .infinity, alignment: .leading).padding()
                ForEach(viewModel.product?.attributes ?? [], id: \.id) { attribute in
                    ProductAttributeView(model: attribute)
                }

            }
        }
    }
}

public func myProductDetailViewFactory(id: String) -> some View {
    ProductDetailView(id: id, viewModel: .init(id: id))
}


