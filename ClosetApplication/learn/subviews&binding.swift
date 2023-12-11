//
//  subviews.swift
//  ClosetApplication
//
//  Created by Carolin Kröger on 12.08.23.
//

import SwiftUI

struct subviews: View {
    
    @State var backgroundColor: Color = .red
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            HStack {
                MyItem(backgroundColor: $backgroundColor, title: "bla", count: 7)
            }
            
            }//Z
        }//body
    
}//struct
struct subviews_Previews: PreviewProvider {
    static var previews: some View {
        subviews()
    }
}

struct MyItem: View {
    @Binding var backgroundColor: Color
    let title: String
    let count: Int
    
    var body: some View {
        VStack(spacing: 20) {
            Text("\(count)")
                .font(.title)
            Text("COunt: ")
            HStack(spacing: 20) {
                Button(title) {
                }
            }
        }
    }
}
