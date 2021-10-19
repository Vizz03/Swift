//
//  ContentView.swift
//  Expenses
//
//  Created by Tinashe Matembo on 19/10/2021.
//

import SwiftUI
import Firebase

struct ContentView: View {
    
    @State var email: String = ""
    @State var password : String = ""
    var body: some View {
        NavigationView{
            VStack {
                TextField("Enter email", text: $email).autocapitalization(.none).textFieldStyle(RoundedBorderTextFieldStyle()).padding()
                SecureField("Enter password", text: $password).textFieldStyle(RoundedBorderTextFieldStyle()).padding()
                Button(action: {
                    login()
                }, label: {
                    Text("Login").frame(width: 300, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color.red).cornerRadius(20).foregroundColor(.white)
                })
                NavigationLink(destination: RegisterView()) {
                    Text("Don't have an account? Register")
                        .padding(.top, 60.0)
                               }
               
            }
          
           
            .navigationTitle("Login")
        }
    }
    
    func login(){
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
                    if error != nil {
                        print(error?.localizedDescription ?? "")
                    }else {
                        print("success")
                    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
