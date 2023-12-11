//
//  enums and init.swift
//  ClosetApplication
//
//  Created by Carolin Kröger on 11.08.23.
//

import SwiftUI

struct enums_and_init: View {
    
    let backgroundColor: Color
    let title: String
    
    init(fruit: Fruit) {
        
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = .red
        } else {
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
        
        
        
    }
    
    enum Fruit{
        case apple
        case orange
    }
    
    var body: some View {
        VStack {
            Text("5)")
                
                
            Text(title)
                
                
        }
        .frame(width:150, height: 150)
        .background(backgroundColor)
    }
}

struct enums_and_init_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            enums_and_init(fruit: .orange)
            enums_and_init(fruit: .apple)
        }
        
    }
}
