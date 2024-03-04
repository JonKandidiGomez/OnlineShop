//
//  RowList.swift
//  OnlineShop
//
//  Created by  on 4/3/24.
//

import SwiftUI

struct FilaProducto: View {
    var producto: Producto
    var body: some View {
        HStack{
            AsyncImage(url: URL(string:producto.image
                               ))
            { image in
                image.resizable().scaledToFit()
            } placeholder: {
            }.padding(.all, 20)
            VStack{
                HStack{
                    Text(producto.title)
                    Spacer()
                }
                
                HStack{
                    Text("$" + String(producto.price)).foregroundStyle(.gray)
                    Spacer()
                }
                
                
            }
        }.frame(height: 120)
    }
}


