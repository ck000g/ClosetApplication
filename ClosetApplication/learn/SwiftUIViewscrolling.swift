//
//  SwiftUIViewscrolling.swift
//  ClosetApplication
//
//  Created by Carolin Kröger on 11.08.23.
//

import SwiftUI

struct SwiftUIViewscrolling: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: true) {
            HStack {
                ForEach (0..<10) {index in
                    
                    Rectangle()
                        .frame(width: 200, height:300)
                }
                
            }
        }
        
    }
}

struct SwiftUIViewscrolling_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIViewscrolling()
    }
}
