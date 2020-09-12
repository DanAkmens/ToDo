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
        
        if let label = cell.viewWithTag(1000) as? UILabel {
        
            label.text = todoList.toDos[indexPath.row].text
    
        }
        configureCheckmark(cell: cell, at: indexPath)
        return cell
    }
    
    // what cell is selected
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
    
            configureCheckmark(cell: cell, at: indexPath)
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }
    
    func configureCheckmark(cell: UITableViewCell, at indexPath: IndexPath) {
        for checkItem in todoList.toDos {
            if indexPath.row == 0 {
                if checkItem.checked {
                    cell.accessoryType = .none
                } else {
                    cell.accessoryType = .checkmark
                }
                checkItem.checked = !checkItem.checked
            } else if indexPath.row == 1 {
                if checkItem.checked {
                    cell.accessoryType = .none
                } else {
                    cell.accessoryType = .checkmark
                }
                checkItem.checked = !checkItem.checked
            }
            else if indexPath.row == 2 {
                if checkItem.checked {
                    cell.accessoryType = .none
                } else {
                    cell.accessoryType = .checkmark
                }
                checkItem.checked = !checkItem.checked
            } else if indexPath.row == 3 {
                if checkItem.checked {
                    cell.accessoryType = .none
                } else {
                    cell.accessoryType = .checkmark
                }
                checkItem.checked = !checkItem.checked
            } else if indexPath.row == 4 {
                if checkItem.checked {
                    cell.accessoryType = .none
                } else {
                    cell.accessoryType = .checkmark
                }
                checkItem.checked = !checkItem.checked
            }
        }
    }
}
