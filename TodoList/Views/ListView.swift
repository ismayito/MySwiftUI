//
//  ListView.swift
//  TodoList
//
//  Created by mac on 09/06/2026.
//

import SwiftUI

struct ListView: View {
    @State var items:[String] = [
        " This is item 1",
        "This is item 2",
        "Third item"
    ]
    
    var body: some View {
        List {
            ForEach(items, id:\.self) { item in
                ListViewRowItem(title: item
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
