//
//  SignIn.swift
//  ClosetApplication
//
//  Created by Carolin Kröger on 11.10.23.
//

import SwiftUI

@MainActor
final class SignInEmailViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func signUp() async throws {
        //smilar to if but reversed
        print("entered viewmodel.singUp()")
        guard !email.isEmpty, !password.isEmpty else{
            print("No email or password found.")
            return
        }//guard
        try await AuthenticationManager.shared.createUser(email: email, password: password)
        print("Success signing UP user")
    }//func
    
    func signIn() async throws {
        //smilar to if but reversed
        print("entered viewmodel.singIn()")
        guard !email.isEmpty, !password.isEmpty else{
            print("No email or password found.")
            return
        }//guard
        try await AuthenticationManager.shared.signInUser(email: email, password: password)
        print("Success signing IN user")
    }//func
}//class

struct SignInEmailView: View {
    
    @StateObject private var viewModel = SignInEmailViewModel()
    
    @Binding var showSignInView: Bool
    
    var body: some View {
        ZStack {
            gradient1
            VStack {
                Image(systemName: "key")
                    .resizable()
                    .frame(width: 14, height: 28)
                    .foregroundColor(Color("accent2Switch"))
                    .padding()
                TextField("Email", text: $viewModel.email)
                    .foregroundColor(Color("accent2Switch"))
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color("accent1Switch").opacity(0.1))
                    .cornerRadius(10)
                SecureField("Password", text: $viewModel.password)
                    .foregroundColor(Color("accent2Switch"))
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color("accent1Switch").opacity(0.1))
                    .cornerRadius(10)
                Button {
                    Task {
                        do {
                            try await viewModel.signUp()
                            showSignInView = false
                            print("viemodel.signUp() worked")
                            //if signup worked, will exit function here
                            return
                        } catch {
                            print("error at viewmodel.signUp()")
                        }
                        do {
                            try await viewModel.signIn()
                            showSignInView = false
                            print("viemodel.signIn() worked")
                            return
                        } catch {
                            print("error at viewmodel.signIn()")
                        }
                    }
                    
                } label: {
                    Text("Sign In")
                        
                        .foregroundColor(Color("accent2Switch"))
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color("accent1").opacity(0.1))
                        .cornerRadius(10)
                }//Button
                
            }//V
            .navigationTitle("Sign in with Email")
        }//Z
        
    }//body
}//View

struct SignIn_Previews: PreviewProvider {
    static var previews: some View {
        SignInEmailView(showSignInView: .constant(false))
    }
}
