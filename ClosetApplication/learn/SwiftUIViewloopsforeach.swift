//
//  SwiftUIViewloopsforeach.swift
//  ClosetApplication
//
//  Created by Carolin Kröger on 11.08.23.
//

import SwiftUI


struct SwiftUIViewloopsforeach: View {
    
    let data: [String] = ["Hi", "Hello", "bla"]
    let myString: String = "Hello"
    var body: some View {
        VStack {
            ForEach(data.indices) { index in
                Text("\(data[index]) \(index)")
                }
    
        
            
            
        }
    }
}

struct SwiftUIViewloopsforeach_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIViewloopsforeach()
    }
}
