//
//  navview.swift
//  ClosetApplication
//
//  Created by Carolin Kröger on 12.08.23.
//

import SwiftUI

struct navview: View {
    var body: some View {
        NavigationView {
            ScrollView {
                
                NavigationLink("closet", destination: buttons(title: "YES"))
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text("Hello, World!")
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }//scroll
            .navigationTitle("home")
            .navigationBarTitleDisplayMode(.automatic)
            .navigationBarItems(
                leading:
                    HStack {
                        NavigationLink(
                            destination: buttons(title: "YES"),
                            label: {
                                Image(systemName: "person.fill")
                                })//label
                            },//HStack
                trailing:
                    NavigationLink(
                        destination: buttons(title: "YES"),
                        label: {
                            Image(systemName: "gear")
                            
                        })
                        )
                }//nav
        }//body
}// struct

struct navview_Previews: PreviewProvider {
    static var previews: some View {
        navview()
    }
}
