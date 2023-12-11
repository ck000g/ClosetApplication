//
//  home.swift
//  ClosetApplication
//
//  Created by Carolin Kröger on 26.07.23.
//

import SwiftUI

struct home: View {
    var body: some View {
        ZStack {
            Color(.systemMint)
            .ignoresSafeArea()
            VStack(alignment: .leading, spacing: 20.0) {
                Text("Closet")
                VStack(alignment: .trailing) {
                    HStack {
                        Text("Good morning, person")
                        Spacer()
                            
                        Image(systemName: "brain")
                            
                        Image(systemName: "hands.clap")
                        Image(systemName: "hands.clap.fill")
                    }
                    .font(.caption)
                    .foregroundColor(.mint)
                    Text("These are symbols")
                }
            }
            .padding(20)
            .background(Rectangle().foregroundColor(.gray).cornerRadius(    15).shadow(radius: 10))
            .padding(10)
        }
        
    }
}

struct home_Previews: PreviewProvider {
    static var previews: some View {
        home()
    }
}
