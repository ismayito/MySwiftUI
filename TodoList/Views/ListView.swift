//
//  ListView.swift
//  TodoList
//
//  Created by mac on 09/06/2026.
//

internal import SwiftUI

struct ListView: View {
    @EnvironmentObject var listViewModel:ListViewModel
    var body: some View {
        List {
            ForEach(listViewModel.items) { item in
                ListViewRowItem(item:item
                )
                .onTapGesture {
                    withAnimation {
                        listViewModel.updateItem(item:item)
                    }
                }
            }
            .onDelete(perform: listViewModel.deleteItems)
            .onMove(perform:listViewModel .moveItems)
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
    .environmentObject(ListViewModel())
}
