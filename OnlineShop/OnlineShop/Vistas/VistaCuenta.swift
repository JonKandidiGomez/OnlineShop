//
//  OtraTestView.swift
//  OnlineShop
//
//  Created by  on 1/3/24.
//

import Foundation
import SwiftUI

class UserData: ObservableObject {
    
}

struct VistaCuenta: View {
    @AppStorage("nombre") var nombre: String = ""
    @AppStorage("apellido") var apellido: String = ""
    @AppStorage("email") var email: String = ""
    //@AppStorage("storedfNacimiento") var storedfNacimiento = Date.now.timeIntervalSinceReferenceDate
    //@AppStorage("storedfNacimiento") var fNacimiento: Date = Date.now.timeIntervalSinceReferenceDate
    /*var fNacimiento: Date{
        set{
            storedfNacimiento = newValue.timeIntervalSinceReferenceDate
        }
        get{
            return Date(timeIntervalSinceReferenceDate: storedfNacimiento)
        }
    }*/
    @AppStorage("vip") var esVIP: Bool = false
    @AppStorage("recibeOferta") var recibeOfertas: Bool = false
    @State var cuentaVistaModelo: CuentaVistaModelo
    
    
    var body: some View {
        VStack{
            NavigationView {
                Form {
                    Section("Información personal") {
                        TextField("Nombre", text: $nombre).disableAutocorrection(true)
                        TextField("Apellido", text: $apellido).disableAutocorrection(true)
                        TextField("Email", text: $email).disableAutocorrection(true)
                        //DatePicker("Fecha de nacimiento", selection: $fNacimiento, displayedComponents: .date)
                        
                    }
                    Section("Configuración") {
                        Toggle("Cliente VIP", isOn: $esVIP)
                        Toggle("Desea recibir ofertas", isOn: $recibeOfertas)

                    }
                    Button("Guardar cambios", action: {
                        //cuentaVistaModelo = CuentaVistaModelo(nombre: nombre, apellido: apellido,email: email, fNacimiento: fNacimiento, esVIP: esVIP, recibeOfertas: recibeOfertas)
                        //cuentaVistaModelo.leerArchivo()
                        //guardar.toggle()
                        //cuentaVistaModelo.imprimirNombre()
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
           //fNacimiento: Date.now,
           esVIP: false,
           recibeOfertas: false,
            cuentaVistaModelo: CuentaVistaModelo())
}

