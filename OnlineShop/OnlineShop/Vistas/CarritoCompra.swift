//
//  CarritoCompra.swift
//  OnlineShop
//
//  Created by  on 4/3/24.
//


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

