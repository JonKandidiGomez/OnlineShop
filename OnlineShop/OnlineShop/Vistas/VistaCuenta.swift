//
//  OtraTestView.swift
//  OnlineShop
//
//  Created by  on 1/3/24.
//

import Foundation
import SwiftUI


struct VistaCuenta: View {
    @State var nombre: String
    @State var apellido: String
    @State var email: String
    @State var fNacimiento: Date
    @State var esVIP: Bool
    @State var recibeOfertas: Bool
    @State var cuentaVistaModelo: CuentaVistaModelo
    
    var body: some View {
        VStack{
            NavigationView {
                Form {
                    Section("Información personal") {
                        TextField("Nombre", text: $nombre).disableAutocorrection(true)
                        TextField("Apellido", text: $apellido).disableAutocorrection(true)
                        TextField("Email", text: $email).disableAutocorrection(true)
                        DatePicker("Fecha de nacimiento", selection: $fNacimiento, displayedComponents: .date)
                        
                    }
                    Section("Configuración") {
                        Toggle("Cliente VIP", isOn: $esVIP)
                        Toggle("Desea recibir ofertas", isOn: $recibeOfertas)

                    }
                    Button("Guardar cambios", action: {
                        cuentaVistaModelo = CuentaVistaModelo(nombre: nombre, apellido: apellido,email: email, fNacimiento: fNacimiento, esVIP: esVIP, recibeOfertas: recibeOfertas)
                        cuentaVistaModelo.imprimirNombre()
                    })
                
                }
                .navigationTitle("Cuenta de usuario")
            }
        }
    }
}



#Preview {
    VistaCuenta(nombre: "",
           apellido: "",
           email: "",
           fNacimiento: Date.now,
           esVIP: false,
           recibeOfertas: false,
            cuentaVistaModelo: CuentaVistaModelo())
}

