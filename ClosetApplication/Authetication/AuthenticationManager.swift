//
//  AuthenticationManager.swift
//  ClosetApplication
//
//  Created by Carolin Kröger on 12.10.23.
//

import Foundation
import FirebaseAuth

//user data class
struct AuthDataResultModel {
    let uid: String?
    let email: String?
    let photoUrl: String?
    
    //takes the user as returned by firebase as (kind of) "parameter" in intializer
    //to store as an obejct in different format
    init(user: FirebaseAuth.User) {
        self.uid = user.uid
        self.email = user.email
        //keep as simple datatypes, convert URL to string
        self.photoUrl = user.photoURL?.absoluteString
    }
}



//final means other classes will not inherit from this, performance benefit
final class AuthenticationManager {
    //only instance of this class in project
    static let shared = AuthenticationManager()
    //therefore init can be private
    private init() {}
    
    //from signed in user get user data and convert to class: AuthDataResultModel
    func getAuthenticatedUser() throws -> AuthDataResultModel {
        print("entered authenticatedUser()")
        //optional so unwrap
        guard let user = Auth.auth().currentUser else {
            //generic error but just fmi
            print("not signed in")
            throw URLError(.badServerResponse)
        }
        print("signed in")
        return AuthDataResultModel(user: user)
    }
    
    //create user and get data
    //not doing anything with result
    @discardableResult
    func createUser(email: String, password: String) async throws -> AuthDataResultModel{
        print("entered createUser()")
        //create user through firebase call which also returns userdata
        let authDataResult = try await Auth.auth().createUser(withEmail: email, password: password)
        //return user data, through other function, in desired format (class: AuthDataResultModel)
        print("success creating user")
        return AuthDataResultModel(user: authDataResult.user)
    }
    
    @discardableResult
    func signInUser(email: String, password: String) async throws -> AuthDataResultModel{
        print("etnered singInUser()")
        let authDataResult = try await Auth.auth().signIn(withEmail: email, password: password)
        return AuthDataResultModel(user: authDataResult.user)
    }
    
    //sign user out on device
    func signOut() throws {
        print("entered signOut")
        //by fireabs, sign them out immediately, locally
        try Auth.auth().signOut()
    }
    
    //reset users password send to parameter email
    func resetUserPassword(email: String) async throws {
        try await Auth.auth().sendPasswordReset(withEmail: email)
    }
}





/*let result = AuthDataResultModel(
    uid: authDataResult.us,
    email: authDataResult.user.email,
    photoUrl: authDataResult.user.photoURL)
}*/
