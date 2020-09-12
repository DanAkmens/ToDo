//
//  ViewController.swift
//  Checklist
//
//  Created by d.putans on 09/09/2020.
//  Copyright © 2020 d.putans. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController {
    
    var todoList: ToDoList
    
    required init?(coder aDecoder: NSCoder) {
        
        // accessing model
        todoList = ToDoList()
        
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoList.toDos.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CheckListItem", for: indexPath)
        
        let item = todoList.toDos[indexPath.row]
        configureText(for: cell, with: item)
        configureCheckmark(cell: cell, with: item)
        return cell
    }
    
    // what cell is selected
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
    
            let item = todoList.toDos[indexPath.row]
            configureCheckmark(cell: cell, with: item)
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }
    
    func configureText(for cell: UITableViewCell, with item: ChecklistItem) {
        if let label = cell.viewWithTag(1000) as? UILabel {
            
            label.text = item.text
            
        }
    }
    
    // check mark method
    func configureCheckmark(cell: UITableViewCell, with item: ChecklistItem) {
        
        if item.checked {
            cell.accessoryType = .none
        } else {
            cell.accessoryType = .checkmark
        }
        item.toggleChecked()
    }
}
