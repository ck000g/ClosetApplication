//
//  buttons.swift
//  ClosetApplication
//
//  Created by Carolin Kröger on 12.08.23.
//

import SwiftUI

struct buttons: View {
    
    @State var title: String = "bla"
    var body: some View {
        VStack {
            Text(title)
            Button("BUtton") {
                self.title = "button was pressed"
            }
            Button(action: {
                self.title = "button was pressed"
            }, label: {
                Circle()
                    .foregroundColor(Color.black)
                    .frame(width: 50, height:50)
                    .shadow(radius:20)
                    .padding()
                    .overlay(
                        Image(systemName: "heart")
                    )
            })
            Button(action: {
                self.title = "button was pressed"
            }, label: {
                Text("last button")
                    .foregroundColor(Color.black)
                    .frame(width: 50, height:50)
                    .shadow(radius:20)
                    .background(
    
                        Capsule()
                            .stroke(lineWidth: 5)
                    )
            })
        }
    }
}

struct buttons_Previews: PreviewProvider {
    static var previews: some View {
        buttons()
    }
}
