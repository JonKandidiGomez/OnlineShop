//
//  CuentaVistaModelo.swift
//  OnlineShop
//
//  Created by  on 11/3/24.
//

import Foundation

class CuentaVistaModelo {
    
    var cuentaDeUsuario: CuentaUsuario
    
    init(nombre:String, apellido:String, email:String, fNacimiento: Date, esVIP:Bool, recibeOfertas:Bool) {
        self.cuentaDeUsuario = CuentaUsuario(nombre: nombre, apellido: apellido, email: email, fNacimiento: fNacimiento, esVIP: esVIP, recibeOfertas: recibeOfertas)
        print("LLegue a l constructor")
        UserDefaults.standard.set(nombre, forKey: "informacion")
    }
    init() {
        self.cuentaDeUsuario = CuentaUsuario(nombre: "", apellido: "", email: "", fNacimiento: Date.now, esVIP: false, recibeOfertas: false)
    }
    
    func leerArchivo() {
        let algo = UserDefaults.standard.string(forKey: "informacion")
        print(algo!)
    }
    /*func guardarDatos(cuenta: CuentaUsuario) {
        print("Llegue a el codigo de Jon")
        self.cuentaDeUsuario = cuenta
    }*/
    
    
}
