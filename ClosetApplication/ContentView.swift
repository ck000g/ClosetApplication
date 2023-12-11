//
//  ContentView.swift
//  ClosetApplication
//
//  Created by Carolin Kröger on 25.07.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "brain")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("cause thinking in the morning hurts".capitalized)
                .foregroundColor(.blue)
                //.kerning(10)
                .strikethrough(true)
                .multilineTextAlignment(.leading)
                .frame(width: 200, height: 100, alignment: .center)
                .minimumScaleFactor(0.1)
            /*Image("head_image")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(sjbf)
                .cornerRadius(10)
                .padding(.top, 17.0)
             */
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
