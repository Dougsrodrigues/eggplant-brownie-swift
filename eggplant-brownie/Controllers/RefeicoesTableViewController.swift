//
//  RefeicoesTableViewController.swift
//  eggplant-brownie
//
//  Created by Douglas Santiago on 17/03/22.
//

import UIKit

class RefeicoesTableViewController: UITableViewController {


  var refeicoes = [
    Refeicao("Macarrão", felicidade: 4),
    Refeicao("Pizza", felicidade: 4)
  ]
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return refeicoes.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
    
    let refeicao = refeicoes[indexPath.row]
    
    cell.textLabel?.text = refeicao.nome
    
    return cell
    
  }
  
  func add(_ refeicao:Refeicao){
    refeicoes.append(refeicao)
    tableView.reloadData()
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if let viewController = segue.destination as? ViewController {
      viewController.tableViewController = self
    }
  }
  
}
