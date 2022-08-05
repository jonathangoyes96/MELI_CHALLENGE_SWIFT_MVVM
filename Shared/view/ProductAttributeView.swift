//
//  ProductAttributeView.swift
//  mvvm challenge meli (iOS)
//
//  Created by Jonathan Goyes on 5/08/22.
//

import SwiftUI

struct ProductAttributeView: View {
    
    let model: Attribute
    
    
    var body: some View {
        HStack {
            Text(model.name ?? "")
                .frame(maxWidth: .infinity)
                .font(.body)
                .lineLimit(2).padding()
            Text(model.valueName ?? "")
                .frame(maxWidth: .infinity)
                .font(.body)
                .lineLimit(2).padding()
        }
    }
}

