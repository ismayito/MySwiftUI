//
//  ListViewModel.swift
//  TodoList
//
//  Created by mac on 10/06/2026.
//

import Foundation
internal import Combine
internal import SwiftUI

class ListViewModel:ObservableObject {
    
    @Published var items:[ItemModel] = []
    
    init(){
        getItems()
    }
    
    func getItems (){
        let newItems = [
            ItemModel(title: "This is title 1", isCompleted: false),
            ItemModel(title: "This is title 2", isCompleted: true),
            ItemModel(title: "This is title 3", isCompleted: false),
            ItemModel(title: "This is title 4", isCompleted: true)
    ]
        
        items.append(contentsOf: newItems)    }
    
    
    func deleteItems (indexSet:IndexSet){
        items.remove(atOffsets: indexSet)
    }
    
    func moveItems (sources:IndexSet, destination:Int){
        items.move(fromOffsets: sources, toOffset: destination)
    }
    
    func additem(title:String){
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    
    func updateItem(item:ItemModel){
        
//        let index = items.firstIndex(where: {
//            (existingItems) -> Bool in
//            return existingItems.id == item.id
//            
//        })
        
        // Find the index of the item to update
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            // Since ItemModel is immutable (let properties), replace with a new instance
            let updated = ItemModel(title: item.title, isCompleted: !item.isCompleted)
            items[index] = updated
        
    }
    
}
