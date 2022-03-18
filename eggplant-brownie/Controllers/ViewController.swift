//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Douglas Santiago on 29/12/21.
//

import UIKit

class ViewController: UIViewController {
  
  var tableViewController: RefeicoesTableViewController?
  
  @IBOutlet var nomeTextField: UITextField?
  @IBOutlet var felicidadeTextField: UITextField?
  
  
  @IBAction func adicionar(_ sender: Any) {
  
    if let nomeRefeicao = nomeTextField?.text , let felicidadeRefeicao = felicidadeTextField?.text {
      let nome: String = nomeRefeicao
      if let felicidade = Int(felicidadeRefeicao){
        let refeicao = Refeicao(nome, felicidade: felicidade)

        print("comi \(refeicao.nome) e fiquei com felicidade: \(refeicao.felicidade)")
        
        tableViewController?.add(refeicao)
        navigationController?.popViewController(animated: true)
      }else {
        print("Error ao criar refeição")
      }
      
      
    }
  }
}

