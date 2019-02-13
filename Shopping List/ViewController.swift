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
        let item1 = Item(name: "Milk")
        let item2 = Item(name: "eggs")
        Items = [item1, item2]
        let item3 = Item(name: "Bread")
        Items.append(item3)
    }

    @IBAction func addNewItemButtonPressed(_ sender: Any) {
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { return Items.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")!
        let currentItemName = Items[indexPath.row].name
        cell.textLabel?.text = "Hello"
        cell.textLabel?.text = currentItemName
        return cell
    }
    
    
}

