//
//  VistaCompra.swift
//  OnlineShop
//
//  Created by  on 11/3/24.
//

import SwiftUI

struct VistaCompra: View {
    var producto: Producto
    var body: some View {
        VStack{
            AsyncImage(url: URL(string:producto.image
                               ))
            { image in
                image.resizable().scaledToFit()
            } placeholder: {
            }.padding(.all, 20)
            Text(producto.title)
            Text("Descripción")
            //Rating
            Button((String(producto.price) + " - Añadir al carrito"), action: {
                
            })
        }
    }
}

#Preview {
    VistaCompra(producto: Producto(title: "wekhbfqkjbev", price: 123.123, image: "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg"))
}
