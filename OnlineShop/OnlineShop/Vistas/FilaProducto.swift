//
//  RowList.swift
//  OnlineShop
//
//  Created by  on 4/3/24.
//

import SwiftUI

struct RowList: View {
    var body: some View {
        HStack{
            AsyncImage(url: URL(string:"https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg"// url del JSON
                               ))
            { image in
                image.resizable().scaledToFit()
            } placeholder: {
            }.padding(.all, 20)
            VStack{
                Text("Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops"
                     //Titulo del producto
                ).multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                HStack{
                    Text("$" + String(109.95)).foregroundColor(.gray)
                    Spacer()
                }
            }
        }.frame(height: 120)
    }
}

#Preview {
    RowList()
}
