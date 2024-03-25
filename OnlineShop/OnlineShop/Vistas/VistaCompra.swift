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
                image.resizable()
                    .scaledToFit()
            } placeholder: {
            }.padding(.horizontal, 100)
            Text(producto.title).font(.system(size: 30)).fontWeight(.medium).padding(.vertical, 20)
            Text("Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday").padding(.vertical, 20)
            //VistaRating(rating: Int(round(producto.rating.rate)))
            Button((String(producto.price) + "\u{20AC}" + " - Añadir al carrito"), action: {
                
            }).padding()
                .foregroundColor(.white)
                .background(.purple)
                .cornerRadius(10)
                .font(.system(size: 20))
                .fontWeight(.semibold)
        }.padding(.horizontal)
    }
}

#Preview {
    VistaCompra(producto: Producto(title: "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops", price: 123.123, image: "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg"))
}
