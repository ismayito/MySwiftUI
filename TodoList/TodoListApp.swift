//
//  TodoListApp.swift
//  TodoList
//
//  Created by mac on 09/06/2026.
//

internal import SwiftUI

/*
 MVVM
 M- model that is the data point for our app
 V- view which is the view UI for our app
 VM- ViewModel which is the one which manages our models(data points for our app)
 */

@main
struct TodoListApp: App {
   @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView(){
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
