//
//  PreAuthenticationView.swift
//  ClosetApplication
//
//  Created by Carolin Kröger on 11.10.23.
//

import SwiftUI

struct PreAuthenticationView: View {
    
    //from rootview, whether this screen is shown or not
    @Binding var showSignInView: Bool
    
    var body: some View {
        ZStack {
            gradient1
            VStack {
                Image(systemName: "bubbles.and.sparkles")
                    .resizable()
                    .foregroundColor(Color("accent2Switch"))
                    .frame(width: 25, height: 25)
                    .padding()
                NavigationLink {
                    SignInEmailView(showSignInView: $showSignInView)
                } label: {
                    Text("Sign In with Email")
                        .foregroundColor(Color("accent2Switch"))
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color("accent1").opacity(0.1))
                        .cornerRadius(10)
                }
            }//V
        }//Z
    }//bod
}

struct PreAuthenticationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            PreAuthenticationView(showSignInView: .constant(false))
        }
    }
}
