//
//  UIAdd.swift
//  ClosetApplication
//
//  Created by Carolin Kröger on 12.08.23.
//

import SwiftUI

struct UIAdd: View {
    
    @State var clothingName: String
    //attributes of Clothing struct all declared as their enums
    @State var clothingType: TypeOf?
    @State var clothingFormality: Formality?
    @State var clothingLayer: Layer?
    //@State private var clothingColor: ColorT
    /*var queries: [Menu] = [
     //
     ]*/
    var body: some View {
        ZStack{
            gradient1
            ScrollView{
                VStack {
                    Image(systemName: ("plus.square.on.square"))
                        .resizable()
                        .foregroundColor(Color("accent2Switch"))
                        .frame(width: 25, height: 25)
                        .padding()
                    
                    TextField(" name of clothing item", text: $clothingName)
                        .foregroundColor(Color("accent2Switch"))
                        .frame(width: 300, height: 50)
                        .background(Color("accent1").opacity(0.1))
                        .cornerRadius(10)
                        .padding()
                    
                    
                    
                    Menu("type"){
                        // declare type atttribute as case of TypeOf enum
                        Button("pants") {
                            clothingType = .pants
                        }
                        Button("top") {
                            clothingType = .top
                        }
                        Button("jacket") {
                            clothingType = .jacket
                        }
                        Button("skirt") {
                            clothingType = .skirt
                        }
                    }//Menu
                    .foregroundColor(Color("accent2Switch"))
                    .frame(width: 300, height: 50)
                    .background(Color("accent1").opacity(0.1))
                    .cornerRadius(10)
                    .padding()
                    
                    Menu("formality"){
                        // declare type atttribute as case of Formality enum
                        Button("formal") {
                            clothingFormality = .formal
                        }
                        Button("semi-formal") {
                            clothingFormality = .semi
                        }
                        Button("chill") {
                            clothingFormality = .chill
                        }}
                    .foregroundColor(Color("accent2Switch"))
                    .frame(width: 300, height: 50)
                    .background(Color("accent1").opacity(0.1))
                    .cornerRadius(10)
                    .padding()
                    
                    
                    Menu("layer"){
                        // declare type atttribute as case of Layer enum
                        Button("underlayer") {
                            //
                        }
                        Button("middlelayer") {
                            //
                        }
                        Button("overlayer") {
                            //
                        }
                        Button("cold") {
                            //
                        }
                    }//Menu
                    .foregroundColor(Color("accent2Switch"))
                    .frame(width: 300, height: 50)
                    .background(Color("accent1").opacity(0.1))
                    .cornerRadius(10)
                    .padding()
                    
                    
                    Button ("ADD") {
                        //initializes clothing item, returns bool, not sued so far
                        initializeItem(name: clothingName, type: clothingType, layer: clothingLayer, formality: clothingFormality)
                    }//Button
                    .foregroundColor(Color("accent2Switch"))
                    .frame(width: 300, height: 50)
                    .background(Color("accent1").opacity(0.1))
                    .cornerRadius(10)
                    .padding()
                    .shadow(color: Color("accent1Switch"), radius: 50)
                    
                
                    
                }//VStack
            }//Scroll
            .navigationTitle("Add Item")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                leading:
                    NavigationLink(
                        destination: UICloset(),
                        label: {
                            Image(systemName: "door.right.hand.open")
                        })
            )
        }//ZStack
    }//body
    
    //var nonOptionalname: Binding<String> {
        //Binding<String>(
          //  get: { self.clothingName ?? "" },
           // set: { self.clothingName = $0 }
        //)
    
    
    
   
    
  
    func initializeItem(name: String?, type: TypeOf?, layer: Layer?, formality: Formality?)-> (Bool, String?) {//unwrap name optional
        guard let name else {
            return (false, "name")
            
        }//unwrap type optional
        guard let type else {
            return (false, "type")
            
        }//unwrap layer optional
        guard let layer else {
            return (false, "type")
            
        }//unwrap formality optional
        guard let formality else {
            return (false, "type")
            
        }
        //here we have access to non optional values, all checked to be non-optional
        clothes.append(Clothing(name: name, type: type, layer: layer, formality: formality))
        return (true, nil)
        
    
    }//initializeItem()
}//struct

public var gradient1: some View {
    EllipticalGradient(colors:[Color("accent1"), Color("accent1Switch")], center: .topLeading, startRadiusFraction: 0.1, endRadiusFraction: 2.5)
        .ignoresSafeArea()
}

public var gradient2: some View {
    EllipticalGradient(colors:[Color("accent2"), Color("accent2Switch")], center: .topLeading, startRadiusFraction: 0.1, endRadiusFraction: 2.5)
        .ignoresSafeArea()
}


struct UIAdd_Previews: PreviewProvider {
    static var previews: some View {
        UIAdd(clothingName: "", clothingType: nil, clothingFormality: nil, clothingLayer: nil)
    }
}
