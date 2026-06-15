//
//  ListViewModel.swift
//  TodoList
//
//  Created by mac on 15/06/2026.
//

import Foundation
import Combine
internal import SwiftUI

/*
 CRUD functions
 - most of the time when dealing with the app
 - we shall have the derivatives of crud functions that is
  - Create
  - Read
  - Update
  - Delete
 
 */

class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = []
    
    init() {
        getItems()
    }
    
    func getItems() {
        let newitems = [
            ItemModel(title: "Buy groceries", isCompleted: false),
            ItemModel(title: "Read a book", isCompleted: true),
            ItemModel(title: "Go for a walk", isCompleted: false)
        ]
        items.append(contentsOf: newitems)
    }
    
    // Matches ListView.onDelete(perform: listViewModel.deleteItems)
    func deleteItems(at indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    // Matches ListView.onMove(perform: listViewModel.moveItems)
    func moveItems(from source: IndexSet, to destination: Int) {
        items.move(fromOffsets: source, toOffset: destination)
    }
    
    // Matches AddItemView.listViewModel.additem(title:)
    func additem(title: String) {
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    
    // Toggle completion for a specific item
    func updateItem(item: ItemModel) {
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            items[index] = item.updateCompletion()
        }
    }
}
