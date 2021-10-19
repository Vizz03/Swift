//
//  RegisterView.swift
//  Expenses
//
//  Created by Tinashe Matembo on 19/10/2021.
//

import SwiftUI

struct RegisterView: View {
    @State var username: String = ""
    @State var email: String = ""
    @State var password : String = ""
    
    var body: some View {
        
        NavigationView{
            VStack{
                Text("Enter your Details below")
                TextField("Username", text: $username).padding(/*@START_MENU_TOKEN@*/.vertical, 10.0/*@END_MENU_TOKEN@*/).textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Email", text: $email).padding(.vertical, 10.0).textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Password", text: $password).padding(.vertical, 10.0).textFieldStyle(RoundedBorderTextFieldStyle())
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Register").frame(width: 300, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color.red).cornerRadius(20).foregroundColor(.white)
                })
                NavigationLink( destination: ContentView()){
                    Text("Have an Account? Login")
                        .padding(.top, 30.0)
                }
               
            }.padding()
            .navigationTitle("Register")
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
