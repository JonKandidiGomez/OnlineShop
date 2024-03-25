//
//  CarritoCompra.swift
//  OnlineShop
//
//  Created by  on 4/3/24.
//


import SwiftUI
struct CarritoCompra: View {
    @ObservedObject var catalogo: ProductoViewModel = ProductoViewModel()
    var body: some View {
        VStack {
            NavigationView {
                List {
                    ForEach(catalogo.catalogo) { producto in
                        FilaProducto(producto: producto).onTapGesture {
                            print(producto.title)
                        }
                    }
                }
                .navigationTitle("Carrito")
            }
            Button((String("producto.price") + "\u{20AC}" + " - Pagar"), action: {
                
            }).padding()
                .foregroundColor(.white)
                .background(.purple)
                .cornerRadius(10)
                .font(.system(size: 20))
                .fontWeight(.semibold)
        }.padding(.bottom, 25)
    }
}

#Preview {
    CarritoCompra()
}

