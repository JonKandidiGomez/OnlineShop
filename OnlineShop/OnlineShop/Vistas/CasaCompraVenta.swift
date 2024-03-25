//
//  TestView.swift
//  OnlineShop
//
//  Created by  on 1/3/24.
//

import Foundation
import SwiftUI

struct CasaCompraVenta: View {
    @ObservedObject var catalogo: ProductoViewModel = ProductoViewModel()
    var body: some View {
        NavigationView {
                    List {
                        ForEach(catalogo.catalogo) { producto in
                            FilaProducto(producto: producto).onTapGesture {
                                print(producto.title)
                            }
                        }
                    }
                    .navigationTitle("Lista de productos")
                }
    }
}


#Preview {
    CasaCompraVenta()
}
