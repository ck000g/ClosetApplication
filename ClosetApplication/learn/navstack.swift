//
//  navstack.swift
//  ClosetApplication
//
//  Created by Carolin Kröger on 13.08.23.
//

import SwiftUI

struct navstack: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    ForEach(0..<10) { x in
                        NavigationLink(destination: {
                            MySecondscreen(value: x)
                        }, label: {
                            Text("click me\(x)")
                        })
                        
                    }
            }
            
            }
            /*.navigationTitle("nav bootcamp")
            .navigationDestination(for: Int.self, destination: <#T##(Hashable) -> View#>)
            */
        }
    }
}

struct MySecondscreen: View {
    let value: Int
    init(value:Int) {
        self.value = value
        print("INIT SCREEN \(value)")
    }
    var body: some View {
        Text("screen \(value)")
    }
}

struct navstack_Previews: PreviewProvider {
    static var previews: some View {
        navstack()
    }
}
