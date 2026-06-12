//
//  ItemModel.swift
//  TodoList
//
//  Created by mac on 10/06/2026.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String
    let title:String
    let isCompleted:Bool
    
    init(id:String = UUID().uuidString,title: String, isCompleted: Bool) {
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
        
    }
}
