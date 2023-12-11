//
//  state.swift
//  ClosetApplication
//
//  Created by Carolin Kröger on 12.08.23.
//

import SwiftUI

struct state: View {
    
    @State var backgroundColor: Color = Color.green
    @State var count: Int = 0
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 20) {
                Text("Title")
                    .font(.title)
                Text("COunt: \(count)")
                HStack(spacing: 20) {
                    Button("BUTTON1") {
                        backgroundColor = Color.blue
                        count += 1
                    }
                    Button("BUTTON1") {
                        backgroundColor = Color.orange
                    }
                }
            }//VStack
            .foregroundColor(Color.white)
        }
    }
}

struct state_Previews: PreviewProvider {
    static var previews: some View {
        state()
    }
}
