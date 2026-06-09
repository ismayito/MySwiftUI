//
//  AddItemView.swift
//  TodoList
//
//  Created by mac on 09/06/2026.
//

import SwiftUI

struct AddItemView: View {
    
    @State  var textFieldText: String = ""
    var body: some View {
        ScrollView {
            VStack(spacing:14) {
                TextField("Type something here ...",text: $textFieldText)
                    .frame(height: 50)
                    .padding(.horizontal)
                    .background(Color(Color.gray.opacity(0.1)))
                    .cornerRadius(10)
                Button {
                    
                } label: {
                    Text("Save ".uppercased())
                        .frame(height:50)
                        .frame(maxWidth:.infinity)
                        .foregroundStyle(.white)
                        .font(Font.headline .bold())
                        .background(Color.accentColor)
                        .cornerRadius(10)
                }

                
            }
            .padding(16)
                        }
        .navigationTitle(Text("Add Item 🖊️"))
    }
}

#Preview {
    NavigationView {
        AddItemView()
    }
}
