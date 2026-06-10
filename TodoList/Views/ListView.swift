//
//  ListView.swift
//  TodoList
//
//  Created by mac on 09/06/2026.
//

import SwiftUI

struct ListView: View {
    @State var items:[ItemModel] = [
        ItemModel(title: "This is title 1", isCompleted: false),
        ItemModel(title: "This is title 2", isCompleted: true),
        ItemModel(title: "This is title 3", isCompleted: false),
        ItemModel(title: "This is title 4", isCompleted: true)
]
    
    var body: some View {
        List {
            ForEach(items) { item in
                ListViewRowItem(item:item
                )
            }
        }
        .listStyle(.plain)
        .navigationTitle(Text("To Do List 📝"))
        .navigationBarItems(
            leading: EditButton(),
            trailing:NavigationLink(destination: {
                AddItemView()
            }, label: {
                Text("Add")
            })
        )
    }
}



#Preview {
    NavigationView {
        ListView()
    }
}
