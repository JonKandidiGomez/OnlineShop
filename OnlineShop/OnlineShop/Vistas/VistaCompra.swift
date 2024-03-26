//
//  VistaCompra.swift
//  OnlineShop
//
//  Created by  on 11/3/24.
//

import SwiftUI

struct VistaCompra: View {
    var producto: Producto
    
    @StateObject var productoConexion = ProductoConexion()
    
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
            
            StarRating(rating: Int(producto.rating.rate))
                            .padding(.bottom, 20)
            Button("\(String(format: "%.2f", producto.price))€ - Añadir al carrito", action: {
                productoConexion.add(title: producto.title, price: producto.price, image: producto.image)
            }).padding()
                .foregroundColor(.white)
                .background(.purple)
                .cornerRadius(10)
                .font(.system(size: 20))
                .fontWeight(.semibold)
        }.padding(.horizontal)
    }
}

struct StarRating: View {
    var rating: Int
    
    var body: some View {
        HStack {
            ForEach(1...5, id: \.self) { index in
                if index <= rating {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                } else {
                    Image(systemName: "star")
                        .foregroundColor(.gray)
                }
            }
        }
        .font(.system(size: 24))
    }
}

#Preview {
    VistaCompra(producto: Producto(title: "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops", price: 123.123, image: "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg", rating: Rango(rate: 0.00)))
}
