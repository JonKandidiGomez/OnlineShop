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
                        /*ForEach(0 ..< Int(catalogo.catalogo.count)) { num in
                            FilaProducto().onTapGesture {
                                print(catalogo.catalogo.count)
                            }
                        }*/
                    }
                    .navigationTitle("Lista de productos")
                }
    }
}


#Preview {
    CasaCompraVenta()
}
