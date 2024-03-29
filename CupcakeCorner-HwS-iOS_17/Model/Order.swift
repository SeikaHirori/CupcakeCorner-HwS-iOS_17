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
    
    var specialRequestEnabled = false {
        didSet {
            if specialRequestEnabled == false {
                extraFrosting = false
                addSprinkles = false
            }
        }
    }
    var extraFrosting = false
    var addSprinkles = false
    
    var name: String = ""
    var streetAddress: String = ""
    var city = ""
    var zip = ""
    
    // https://arc.net/l/quote/vnaodpps
    var hasValidAddress: Bool {
        if name.isEmpty || streetAddress.isEmpty || city.isEmpty || zip.isEmpty {
            return false
        }
        
        return true
    }
}
