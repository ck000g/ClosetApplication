//
//  functions.swift
//  ClosetApplication
//
//  Created by Carolin Kröger on 12.08.23.
//

import SwiftUI

struct functions: View {
    
    @State var backgroundColor: Color = .red
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            contentLayer
            }//Z
        }//body
    
    func buttonPressed() {
        backgroundColor = Color.orange
    }//func
    
    var contentLayer: some View {
        VStack(spacing: 20) {
            Text("Title")
                .font(.title)
            Text("COunt: ")
            HStack(spacing: 20) {
                Button("BUTTON1") {
                    buttonPressed()
                }
            }
        }//VStack
        .foregroundColor(Color.white)
    }//contentlayer
}//struct

struct functions_Previews: PreviewProvider {
    static var previews: some View {
        functions()
    }
}
