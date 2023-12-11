//
//  SwiftUIViewgrid.swift
//  ClosetApplication
//
//  Created by Carolin Kröger on 11.08.23.
//

import SwiftUI

struct SwiftUIViewgrid: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        // adaptive column
        // GridITem(.adaptive(minimum: 50, maxiumum: 300)
    ]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: nil, pinnedViews: [.sectionHeaders], content: {
                Section (header: Text("Section1")
                ){
                    //putting loop in section means it scrolls with grid, doesnt stay visble always, could scroll
                    // to different section
                    ForEach(0..<50) {index in
                        Rectangle()
                            .frame(height: 50)
                    }
                }
                Section (header: Text("Section2")){
                    //putting loop in section means it scrolls with grid, doesnt stay visble always, could scroll
                    // to different section
                    ForEach(0..<50) {index in
                        Rectangle()
                            .frame(height: 50)
                    }
                }
                
            })
        }
        
    }
}

struct SwiftUIViewgrid_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIViewgrid()
    }
}
