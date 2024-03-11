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
    }
    init() {
        self.cuentaDeUsuario = CuentaUsuario(nombre: "", apellido: "", email: "", fNacimiento: Date.now, esVIP: false, recibeOfertas: false)
    }
    func imprimirNombre() {
        print(cuentaDeUsuario.devolverNombre())
    }
    
    
}
