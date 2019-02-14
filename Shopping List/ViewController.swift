//
//  ViewController.swift
//  Shopping List
//
//  Created by Nikolas Krecu on 2/8/19.
//  Copyright © 2019 Nikolas Krecu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource{
    @IBOutlet weak var newItemTextfield: UITextField!
    @IBOutlet weak var tableView: UITableView!
    var Items: [Item] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
        let item1 = Item(name: "milk", quantity: 5)
        let item2 = Item(name: "eggs", quantity: 4)
        Items = [item1, item2]
        let item3 = Item(name: "Bread", quantity: 1)
        Items.append(item3)
    }

    @IBAction func addNewItemButtonPressed(_ sender: Any) {
        if let newItemName = newItemTextfield.text, newItemName != ""{
            let newItem = Item(name: newItemName, quantity: 1)
            Items.append(newItem)
            tableView.reloadData()
        }
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { return Items.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "myCell"){
        let currentItemName = Items[indexPath.row].name
        let currentItemQuantity = Items[indexPath.row].quantity
        cell.textLabel?.text = currentItemName
            cell.detailTextLabel?.text = "quantity:\(currentItemQuantity)"
        return cell
        }else{
            return UITableViewCell()
        }
    
    
}

}
