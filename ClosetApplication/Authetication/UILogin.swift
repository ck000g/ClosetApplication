//
//  Login.swift
//  ClosetApplication
//
//  Created by Carolin Kröger on 26.07.23.
//

import SwiftUI

    

struct UILogin: View {
    
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var loggedIn = false
    
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(UIColor.tertiarySystemBackground)
                    .ignoresSafeArea()

                VStack{
                    Image(systemName: "key")
                        .padding()
                        .foregroundColor(Color("accent2Switch"))
                    Text("login")
                        .font(.largeTitle)
                        .foregroundColor(Color("accent2Switch"))
                    TextField("Username", text: $username)
                        .foregroundColor(Color("accent2Switch"))
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color("accent2").opacity(0.1))
                        .cornerRadius(10)
                        .border(.black, width: CGFloat(wrongUsername))
                    SecureField("Password", text: $password)
                        .padding()
                        
                        .foregroundColor(Color("accent2Switch"))
                        .frame(width: 300, height: 50)
                        
                        .background(Color("accent2").opacity(0.1))
                        
                        .cornerRadius(10)
                        
                        .border(.black, width: CGFloat(wrongPassword))
                        
                        
                    Button ("Login") {
                         authenticateUser(username: username, password: password)
                    }//Button
                    .foregroundColor(Color("accent2Switch"))
                    .frame(width:300, height: 50)
                    .background(Color("accent2").opacity(0.1))
                    .cornerRadius(10)
                    //.shadow(color: Color("accentPinkSwitch"), radius: 10) ?????
                    .padding()
                    
                    NavigationLink(destination: UIHome(), isActive: $loggedIn){
                        EmptyView()
                    }//Nav-Link
                }//VStack
            }//ZStack
            .navigationBarHidden(true)
        }//NavigationView
        
    }//body
    
    func authenticateUser(username: String, password: String) {
        if username.lowercased() == "badidea" {
            wrongUsername = 0
            if password.lowercased() == "234" {
                wrongPassword = 0
                loggedIn = true
            } else {
                wrongPassword = 2
            }
        } else {
            wrongUsername = 2
        }
    }//Function: authenticateuser
}//struct


struct UILogin_Previews: PreviewProvider {
    static var previews: some View {
        UILogin()
    }
}
