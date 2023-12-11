//
//  recommendationBackend.swift
//  ClosetApplication
//
//  Created by Carolin Kröger on 12.08.23.
//

import Foundation


let item1: Clothing = Clothing(name: "Zara Pants",  type: .pants, layer: .over, formality: .semi)
let item2: Clothing = Clothing(name: "mini skirt", type: .pants, layer: .over, formality: .semi)
let item3: Clothing = Clothing(name: "North Face Jacket", type: .jacket, layer: .cold, formality: .chill)
let item4: Clothing = Clothing(name: "Gucci Gown", type: .dress, layer: .over, formality: .formal)

var clothes2: [Clothing] = [
    item1, item2, item3, item4
]

var maxDuringEdges: Double? = 23.0



