//
//  ContentView.swift
//  Shared
//
//  Created by Jonathan Goyes on 3/08/22.
//

import SwiftUI
import Foundation

struct SearchView: View {
    
    @StateObject private var viewModel = SearchViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
         
                List {
                    HStack {
                        TextField("Busca un producto", text: $viewModel.searchText)
                            .textFieldStyle(.roundedBorder)
                        if viewModel.isSearchEnabled {
                            Image(systemName: "checkmark.circle.fill")
                                .foregroundColor(.green)
                        } else {
                            Image(systemName: "x.circle.fill")
                                .foregroundColor(.red)
                        }
                    }
                    .padding()
         
                    ForEach(viewModel.results, id: \.id) { result in
                        let viewModel = SearchResultViewModel(model: result)
                        NavigationLink {
                            myProductDetailViewFactory(id: result.id ?? "")
                        } label: {
                            SearchResultView(resultVM: viewModel)
                        }
                    }
                }
                .listStyle(.inset)
                
                
                Button {
                    viewModel.performSearch()
                } label: {
                    Text("BUSCAR")
                        .frame(width: 250, height: 40)
                }
                .buttonStyle(.bordered)
                .disabled(!viewModel.isSearchEnabled)
                .padding(.bottom, 8)
            }
            .navigationTitle("MELI CHALLENGE")
        }
    }
}
