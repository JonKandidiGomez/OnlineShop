//
//  ContentView.swift
//  OnlineShop
//
//  Created by  on 23/2/24.
//

import SwiftUI

struct ContentView: View {
    //var catalogo = ProductoViewModel()
    var body: some View {
        VStack {
            /*ForEach(catalogo.id) { numeroid in
                Text(numeroid)
            }*/
            Text("Online Shop").font(Font.custom("IMPACT", size: 32))
            TabView {
                CasaCompraVenta()
                    .tabItem {
                        Image(systemName: "house").font(.system(size:250)).symbolRenderingMode(.multicolor)
                        Text("Casa")
                    }
                VistaCuenta(nombre: "",
                            apellido: "",
                            email: "",
                            fNacimiento: Date.now,
                            esVIP: false,
                            recibeOfertas: false,
                             cuentaVistaModelo: CuentaVistaModelo())
                    .tabItem {
                        Image(systemName: "person.fill").font(.system(size:250)).symbolRenderingMode(.multicolor)
                        Text("Cuenta")
                    }
                CarritoCompra()
                    .badge(1)
                    .tabItem {
                        Image(systemName: "cart.fill").font(.system(size: 250))
                            .symbolRenderingMode(.multicolor)
                        Text("Carrito")
                    }
            }.onAppear() {
                UITabBar.appearance().backgroundColor = .gray
            }
             
        }
        .padding()
        .background(.gray)
    }
}

#Preview {
    ContentView()
}
