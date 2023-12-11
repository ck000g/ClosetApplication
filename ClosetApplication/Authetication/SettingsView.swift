//
//  SettingsView.swift
//  ClosetApplication
//
//  Created by Carolin Kröger on 13.10.23.
//

import SwiftUI

@MainActor
final class SettingsViewModel: ObservableObject {
    
    // tries logging user out
    func logOut() throws {
        try AuthenticationManager.shared.signOut()
    }
    
    func resetPassword() async throws {
        let authUser = try AuthenticationManager.shared.getAuthenticatedUser()
        guard let email = authUser.email else {
            throw URLError(.fileDoesNotExist)
        }
        try await AuthenticationManager.shared.resetUserPassword(email: email)
    }
    
}

struct SettingsView: View {
    
    //initalize object
    @StateObject private var viewModel = SettingsViewModel()
    //for rootview, so if user signs out they see sign in view...
    @Binding var showSignInView: Bool
    
    var body: some View {
        ZStack {
            gradient1
            VStack {
                Image(systemName: "gear")
                    .resizable()
                    .foregroundColor(Color("accent2Switch"))
                    .frame(width: 25, height: 25)
                    .padding()
                Button {
                    Task {
                        do {
                            //if succesfully signecd out, sign in view bool is true
                            try viewModel.logOut()
                            print("SIGNIGN OUT")
                            showSignInView = true
                        } catch {
                            print("ERROR SIGNIGN OUT")
                        }
                    }
                    
                } label: {
                    Text("Sign Out")
                    }
                    .foregroundColor(Color("accent2Switch"))
                    .frame(width: 300, height: 50)
                    .background(Color("accent1").opacity(0.1))
                    .cornerRadius(10)
                    .padding()
                    
                Button {
                    Task {
                        do {
                            //if succesfully signecd out, sign in view bool is true
                            try await viewModel.resetPassword()
                            print("Resetting PWord")
                            showSignInView = true
                        } catch {
                            print("ERROR Resetting PWord")
                        }
                    }
                    
                } label: {
                    Text("Reset Password")
                    }
                    .foregroundColor(Color("accent2Switch"))
                    .frame(width: 300, height: 50)
                    .background(Color("accent1").opacity(0.1))
                    .cornerRadius(10)
                    .padding()
                }//V
            }//Z
        }//bod
    }
    
    struct SettingsView_Previews: PreviewProvider {
        static var previews: some View {
            //IDK WHY
            SettingsView(showSignInView: .constant(false))
        }
    }

