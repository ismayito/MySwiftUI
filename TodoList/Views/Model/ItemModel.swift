//
//  ItemModel.swift
//  TodoList
//
//  Created by mac on 10/06/2026.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title:String
    let isCompleted:Bool
}
