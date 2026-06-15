//
//  ListViewRowItem.swift
//  TodoList
//
//  Created by mac on 09/06/2026.
//

internal import SwiftUI

struct ListViewRowItem: View {
    
    @State var item:ItemModel
    var body :some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle":"circle")
                .foregroundStyle(item.isCompleted ? Color.green:Color.red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical,8)
    }}

#Preview {
    var item1 = ItemModel(title: "Hello World", isCompleted: false)
    var item2 = ItemModel(title: "Hello country", isCompleted: true)
    
    Group {
        ListViewRowItem(item:item1)
        ListViewRowItem(item:item2)
    }
}
