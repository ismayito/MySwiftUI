//
//  AddItemView.swift
//  TodoList
//
//  Created by mac on 09/06/2026.
//

internal import SwiftUI

struct AddItemView: View {
    
   
    @State  var textFieldText: String = ""
    @State var errorMessage: String? = ""
    @State var alertTitle: String? = ""
    @State var showAleart:Bool = false
    
    @EnvironmentObject var listViewModel: ListViewModel
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ScrollView {
            VStack(spacing:14) {
                TextField("Type something here ...",text: $textFieldText)
                    .frame(height: 50)
                    .padding(.horizontal)
                    .background(Color(Color.gray.opacity(0.1)))
                    .cornerRadius(10)
                Button {
                   saveButtonPress()
                } label: {
                    Text("Save ".uppercased())
                        .frame(height:50)
                        .frame(maxWidth:.infinity)
                        .foregroundStyle(.white)
                        .font(Font.headline .bold())
                        .background(Color.accentColor)
                        .cornerRadius(10)
                }
                Text(errorMessage=="" ? "" : errorMessage!)

                
            }
            .padding(16)
                        }
        .navigationTitle(Text("Add Item 🖊️"))
        .alert(isPresented: $showAleart, content: getAlert)
    }
    
    func saveButtonPress(){
        if isTextAppropriate() {
        if(textFieldText=="") {
            return errorMessage="Please enter a title"}
        listViewModel.additem(title:textFieldText)
        presentationMode.wrappedValue.dismiss()
    }
    }
    
    func isTextAppropriate()->Bool{
        if textFieldText.count < 3 {
            alertTitle = "Ooops the title must have atleast 3 characters long.😭"
            showAleart.toggle()
            return false
        }
        return true
    }
    
    func getAlert()->Alert{
        Alert(title: Text("Error"), message: Text(alertTitle ?? ""), dismissButton: .default(Text("OK")))
    }
}

#Preview {
    NavigationView {
        AddItemView()
    }
    .environmentObject(ListViewModel())
}
