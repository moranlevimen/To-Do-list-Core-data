//
//  ViewController.swift
//  ToDoApp
//
//  Created by moran levi on 12/08/2019.
//  Copyright © 2019 moran levi. All rights reserved.
//

import UIKit

//
class ToDoListViewController: UITableViewController  {
    
    let itemArray = ["a","b","c"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    //data source method
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "todoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
      
    }
    //delegate method
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       // print("the row selected\(indexPath.row)")
      //  print(itemArray[indexPath.row])
       
        if(tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark){
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
            
        }else{
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        //changetthe grey
        tableView.deselectRow(at: indexPath, animated: true)//grab the cell as local variable- type of
    }

    


}

