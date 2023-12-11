//
//  closetBackend.swift
//  ClosetApplication
//
//  Created by Carolin Kröger on 10.08.23.
//

import Foundation


struct Clothing {
    let name: String
    let type: TypeOf
    let layer: Layer
    let formality: Formality
    //let color: ColorT
}


enum Layer {
    case under, middle, over, cold
}

enum Formality {
    case formal, semi, chill
}

enum TypeOf: CaseIterable{
    case pants, jacket, top, dress, skirt
}
/*
enum ColorT {
    case black, pink, white, blue, red, green, yellow, orange
}*/

var clothes: [Clothing] = []

let item100: Clothing = Clothing(name: "Zara Pants",  type: .pants, layer: .over, formality: .semi)


func newClothes () {
    print(item1)
}


