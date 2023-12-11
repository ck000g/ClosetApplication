//
//  stackscamp.swift
//  ClosetApplication
//
//  Created by Carolin Kröger on 11.08.23.
//

import SwiftUI

struct stackscamp: View {
    var body: some View {
        ZStack(alignment: .bottom, /* not for zstack: spacing: 50*/content: {
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(Color.blue)
                .frame(width: 90, height: 90)
            Rectangle()
                .fill(Color.green)
                .frame(width: 80, height: 80)
                .overlay(
                    Text("52"),
                    alignment: .center)
        })
    }
}

struct stackscamp_Previews: PreviewProvider {
    static var previews: some View {
        stackscamp()
    }
}
