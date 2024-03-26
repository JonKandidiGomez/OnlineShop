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
import SwiftUI
import FirebaseFirestore
import FirebaseCore

struct CarritoCompra: View {
  @FirestoreQuery(
    collectionPath: "productos",
    predicates: [.where("done", isEqualTo: false)]
  ) var productos: [Producto]

  var body: some View {
      List(productos) { producto in
          Text(producto.title)
      }
  }
}

#Preview {
    CarritoCompra()
}

