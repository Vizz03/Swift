//
//  ExpensesApp.swift
//  Expenses
//
//  Created by Tinashe Matembo on 19/10/2021.
//

import SwiftUI
import Firebase

@main
struct ExpensesApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
