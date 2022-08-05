//
//  SearchResultRow.swift
//  mvvm challenge meli (iOS)
//
//  Created by Jonathan Goyes on 4/08/22.
//

import SwiftUI

struct SearchResultView: View {
    
    let resultVM: SearchResultViewModel
    
    var body: some View {
        HStack {
            
            AsyncImage(url: resultVM.imgUrl) { image in
                image.resizable()
            } placeholder: {
                Image(systemName: "camera.fill")
            }
            .frame(width: 100, height: 100)
            .cornerRadius(10)
                
            Text(resultVM.name)
                .font(.body)
                .lineLimit(2)

            Spacer()
            
            VStack {
                Text("Precio")
                    .font(.caption2)
                Text(resultVM.fullPrice)
                    .font(.callout.weight(.heavy))
            }
                
        }.padding()
    }
}


