//
//  ViewController.swift
//  TableViewSimple
//
//  Created by Juan Morillo on 1/12/16.
//  Copyright © 2016 Juan Morillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
  //Creamos un Array de datos para presentar en la TableView
  var ciudades = ["Madrid","Barcelona","Tarragona","Lleida","Valencia","Málaga","Toledo"]
  
  //Creamos el identificador de la TableView
  let cellIdentifier = "Cell"
  
  @IBOutlet weak var tableView: UITableView!

  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.tableView.dataSource = self
    self.tableView.delegate = self

  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.ciudades.count
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)

    let arrayCiudades =   ciudades[indexPath.row]
    
    cell.textLabel?.text = arrayCiudades

    return cell
    
      }

}

