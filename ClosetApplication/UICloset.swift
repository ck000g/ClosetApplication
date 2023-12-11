//
//  displayCloset.swift
//  ClosetApplication
//
//  Created by Carolin Kröger on 11.08.23.
//

import SwiftUI

struct UICloset: View {
    
    let sortedClothes: [Image] = [
        Image(systemName: "figure.wave"),
        Image(systemName: "figure.wave"),
        Image(systemName: "figure.wave"),
        Image(systemName: "figure.wave"),
        Image(systemName: "figure.wave"),
        Image(systemName: "figure.wave"),
        Image(systemName: "figure.wave"),
        Image(systemName: "figure.wave"),
        Image(systemName: "figure.wave"),
        Image(systemName: "figure.wave"),
        Image(systemName: "figure.wave"),
        Image(systemName: "figure.wave"),
        Image(systemName: "figure.wave"),
        Image(systemName: "figure.wave"),
        Image(systemName: "figure.wave"),
        Image(systemName: "figure.wave"),
        Image(systemName: "figure.wave"),
        Image(systemName: "figure.wave"),
    ]
    let columns: [GridItem] = [
        //how they align
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        // adaptive column
        // GridITem(.adaptive(minimum: 50, maxiumum: 300)
    ]
    var body: some View {
        ZStack {
            //background
            Color(UIColor.tertiarySystemBackground)
            .ignoresSafeArea()
            ScrollView {
                LazyVGrid(columns: columns, spacing: nil, pinnedViews: [.sectionHeaders], content: {
                    Section (header:
                                Text("Tops")
                        .italic()
                        .font(.title)
                        .foregroundColor(Color("accentPink"))
                        .frame(width: 130, height: 40)
                        .background(Color(UIColor.secondarySystemBackground))
                        .cornerRadius(25.0)
                        .padding()
                    ){
                        //putting loop in section means it scrolls with grid, doesnt stay visble always, could scroll
                        // to different section
                        ForEach(sortedClothes.indices) {index in
                            sortedClothes[index]
                                .frame(height: 50)
                                .padding()
                        }//ForLoop
                    }//Section
                    
                    Section (header: Text("Bottoms")
                        .italic()
                        .font(.title)
                        .foregroundColor(Color("accentPink"))
                        .frame(width: 130, height: 40)
                        .background(Color(UIColor.secondarySystemBackground))
                        .cornerRadius(25.0)
                        .padding()
                    ){
                        //putting loop in section means it scrolls with grid, doesnt stay visble always, could scroll
                        // to different section
                        ForEach(sortedClothes.indices) {index in
                            sortedClothes[index]
                                .frame(height: 50)
                                .padding()
                        }//ForLoop
                    }//Section
                })//LazyGRid
            }//ScrollView
            .navigationTitle("closet")
            .font(.footnote)
            .navigationBarTitleDisplayMode(.automatic)
            .navigationBarItems(
                leading:
                    NavigationLink(
                        destination: UIHome(),
                        label: {
                            Image(systemName: "house.fill")
                            }),//leading
                trailing:
                    NavigationLink(
                        destination: UIAdd(clothingName: ""),
                        label: {
                            Image(systemName: "plus.circle.fil")
                            
                        })
                        )
        }//Zstack
    }//body
}//struct

struct UICloset_Previews: PreviewProvider {
    static var previews: some View {
        UICloset()
    }
}
