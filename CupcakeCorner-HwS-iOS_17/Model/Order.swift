//
//  Order.swift
//  CupcakeCorner-HwS-iOS_17
//
//  Created by Seika Hirori on 1/16/24.
//
// Section: "Taking basic order details"
// https://arc.net/l/quote/nohvpkih

import Foundation

@Observable
class Order {
    static let types: [String] = [
        "Vanilla",
        "Strawberry",
        "Chocolate",
        "Rainbow"
    ]
    
    var type = 0
    var quantity = 3
    
    var specialRequestEnabled = false
    var extraFrosting = false
    var addSprinkles = false
}
