//
//  colors.swift
//  ClosetApplication
//
//  Created by Carolin Kröger on 11.08.23.
//

import SwiftUI

struct colors: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                //Color.primary
                //Color(UIColor.systemPink)
                Color("optionspink")
            )
            .frame(width: 300, height: 200)
            .shadow(color: Color.red, radius: 25)
    }
}

struct colors_Previews: PreviewProvider {
    static var previews: some View {
        colors()
    }
}
