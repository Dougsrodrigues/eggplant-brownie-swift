//
//  Item.swift
//  eggplant-brownie
//
//  Created by Douglas Santiago on 04/01/22.
//

import UIKit

class Item: NSObject {
  var nome: String
  var calorias: Double
  
  init(nome: String, calorias: Double){
    self.nome = nome
    self.calorias = calorias
  }
}
