//
//  ViewController.swift
//  SieglViewApp
//
//  Created by Václav Černohorský on 05/11/2019.
//  Copyright © 2019 Václav Černohorský. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    private var animals = [""]
    
    @IBOutlet weak var tvAnimals: UITableView!
    @IBOutlet weak var TFForBros: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tvAnimals.dataSource = self
        // Do any additional setup after loading the view.
    }

    @IBAction func bOpenEmptyView(_ sender: Any) {
        performSegue(withIdentifier: "ssEmptyView", sender: nil)
    }
    @IBAction func bForTF(_ sender: Any) {
        if(TFForBros.text != "") {
            let text: String = TFForBros.text!
            animals.append(text)
            print(animals)
            tvAnimals.reloadData()
            TFForBros.text = ""
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        //var intik = indexPath.item
        cell.textLabel?.text = animals[indexPath.item]
        return cell
    }
    
}

