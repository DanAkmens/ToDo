//
//  ToDoList.swift
//  Checklist
//
//  Created by d.putans on 12/09/2020.
//  Copyright © 2020 d.putans. All rights reserved.
//

import Foundation

class ToDoList {
    
    var toDos: [ChecklistItem] = []
    
    init() {
        let row0Item = ChecklistItem()
        let row1Item = ChecklistItem()
        let row2Item = ChecklistItem()
        let row3Item = ChecklistItem()
        let row4Item = ChecklistItem()
        
        row0Item.text = "Take a jog"
        row1Item.text = "Watch a movie"
        row2Item.text = "Code an app"
        row3Item.text = "Walk the dog"
        row4Item.text = "Study design pattern"
        
        toDos.append(row0Item)
        toDos.append(row1Item)
        toDos.append(row2Item)
        toDos.append(row3Item)
        toDos.append(row4Item)
    }
}
