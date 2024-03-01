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
            Text("Hola ?")
            TabView {
                TestView()
                    .badge(1)
                    .tabItem {
                        Label("Casa", systemImage: "hosue")
                    }
                OtraTestView()
                    .badge(1)
                    .tabItem {
                        Label("Account", systemImage: "custom.person.fill")
                    }
                
            }
             
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
