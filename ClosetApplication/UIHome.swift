//
//  UIHome.swift
//  ClosetApplication
//
//  Created by Carolin Kröger on 11.08.23.
//

import SwiftUI

struct UIHome: View {
    
    let layers: [Image?] = [
        Image(systemName: "brain"),
        Image(systemName: "brain"),
        Image(systemName: "brain"),
        nil,
        Image(systemName: "brain"),
        ]
    
    let layer1: Image? = Image(systemName: "brain")
    let layer2: Image? = Image(systemName: "brain")
    let layer3: Image? = Image(systemName: "brain")
    let layer4: Image? = Image(systemName: "brain")
    let layer5: String? = "brain"
    
    var body: some View {
        ZStack {
            //background
            gradientblue
            VStack {
                
                ForEach(layers.indices) { index in
                    // or use guard?
                    if let sub = layers[index] {
                        Text(sub)
                            .foregroundColor(Color("accentBlueSwitch"))
                    }
                    
                }
                /*
                Spacer()
                
                if let layer1 {
                    Text(layer1)
                        .foregroundColor(Color("accentBlueSwitch"))
                }// if let
                
                Spacer()
                HStack (alignment: .trailing, spacing: nil, content: {
                    
                    Button("Closet") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    .foregroundColor(Color("accentBlueSwitch"))
                    .frame(width:100, height: 100)
                    .background(Color("accentBlueSwitch").opacity(0.15))
                    .cornerRadius(150)
                })
                
                Spacer()
                
                if let layer2 {
                    Text(layer2)
                        .foregroundColor(Color("accentBlueSwitch"))
                }// if let
                
                Spacer() */
                if let layer5 {
                    Image(systemName: layer5)
                }
                
            }// VStack
            .navigationTitle("home")
            .navigationBarTitleDisplayMode(.automatic)
            .navigationBarItems(
                leading:
                    NavigationLink(
                        destination: buttons(),
                        label: {
                            Image(systemName: "person.fill")
                            }),//leading
                trailing:
                    NavigationLink(
                        destination: UICloset(),
                        label: {
                            Image(systemName: "gear")
                            
                        })
                        )
        }// ZSTack
    }// body
    
    //background: gradient, colours configured to support "Dark Mode"
    var gradientblue: some View {
        EllipticalGradient(colors:[Color("accentBlue"), Color("accentBlueSwitch")], center: .topLeading, startRadiusFraction: 0.1, endRadiusFraction: 2.5)
        .ignoresSafeArea()
    }
    var gradientpink: some View {
        EllipticalGradient(colors:[Color("accentPink"), Color("accentPinkSwitch")], center: .topLeading, startRadiusFraction: 0.1, endRadiusFraction: 2.5)
        .ignoresSafeArea()
    }
}// struct

struct UIHome_Previews: PreviewProvider {
    static var previews: some View {
        UIHome()
    }
}
