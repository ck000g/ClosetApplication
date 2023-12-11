//
//  ClosetApplicationApp.swift
//  ClosetApplication
//
//  Created by Carolin Kröger on 25.07.23.
//

//user lol(at)aol.de and CK33714!

import SwiftUI
import Firebase

@main

struct ClosetApplicationApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                WeatherHome()
                //RootView()
            }//navstack
        }//Windowgroup
    }//body
}//struct


class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    print("configured Firebase!")
    return true
  }
}
