//
//  ContentView.swift
//  OnlineShop
//
//  Created by  on 23/2/24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var productoConexion = ProductoConexion()
    
    var body: some View {
        VStack {
            TabView {
                CasaCompraVenta()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Casa")
                    }
                VistaCuenta(nombre: "",
                            apellido: "",
                            email: "",
                            //fNacimiento: Date.now,
                            esVIP: false,
                            recibeOfertas: false,
                             cuentaVistaModelo: CuentaVistaModelo())
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("Cuenta")
                    }
                CarritoCompra()
                    .badge("\(productoConexion.productos.count)")
                    .tabItem {
                        Image(systemName: "cart.fill").font(.system(size: 250))
                            .symbolRenderingMode(.multicolor)
                        Text("Carrito")
                    }
            }
        }
    }
}

#Preview {
    ContentView()
}
