//
//  RowList.swift
//  OnlineShop
//
//  Created by  on 4/3/24.
//

import SwiftUI

struct FilaProducto: View {
    @State var enseniarPopUp: Bool = false
    
    var producto: Producto
    var body: some View {
        HStack{
            AsyncImage(url: URL(string: producto.image)) { image in
                image.resizable().scaledToFit()
            } placeholder: {
            }.padding(.all, 20)
            VStack{
                HStack{
                    Text(producto.title)
                    Spacer()
                }
                
                HStack{
                    Text("$" + String(producto.price)).foregroundStyle(.gray)
                    Spacer()
                }
            }
        }
        .frame(height: 120)
        .onTapGesture {
            enseniarPopUp.toggle()
        }
        .sheet(isPresented: $enseniarPopUp) {
            // Pop-up content view
            VistaCompra(producto: producto)
        }
    }
}

struct PopUpView: View {
    var producto: Producto
    var body: some View {
        // Customize your pop-up view here
        Text(producto.title)
            .padding()
            .background(Color.white)
            .cornerRadius(10)
    }
}

