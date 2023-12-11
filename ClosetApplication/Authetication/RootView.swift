//
//  RootView.swift
//  ClosetApplication
//
//  Created by Carolin Kröger on 12.10.23.
//

import SwiftUI
 
struct RootView: View {
    
    @State private var showSignInView: Bool = false
    
    var body: some View {
        ZStack {
            NavigationStack {
                //
                SettingsView(showSignInView: $showSignInView)
            }//Nav
        }//ZStack
        .onAppear {
            //try to get user data from function for already signed in users, if optional is nil they will be directed to sign in again
            let authUser = try? AuthenticationManager.shared.getAuthenticatedUser()
            if authUser == nil {
                // set bool to true to show signInView
                self.showSignInView = true
                print("not signed in, SignInView = true")
            } else  {
                self.showSignInView = false
                print("already signed in, SignInView = fasle")
            }
        }//onappear
        //here if showSignInView is true (meaning user not singed in), this cover wiht the preauthentication view is shown, directing user to sign in again
        .fullScreenCover(isPresented: $showSignInView) {
            NavigationStack {
                PreAuthenticationView(showSignInView: $showSignInView)
            }//NavStack
        }//screencover
    }//body
}//view

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
