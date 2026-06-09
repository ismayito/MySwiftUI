//
//  ListViewRowItem.swift
//  TodoList
//
//  Created by mac on 09/06/2026.
//

import SwiftUI

struct ListViewRowItem: View {
    
    @State var title:String = "This is item 1"
    var body :some View {
        HStack {
            Image(systemName: "checkmark.circle")
            Text("\(title)")
            Spacer()
        }
    }}

#Preview {
    ListViewRowItem()
}
