//
//  ContentView.swift
//  CupcakeCorner-HwS-iOS_17
//
//  Created by Seika Hirori on 1/16/24.
//

// Taking break. stopped here: https://arc.net/l/quote/jvrnhaiw

import SwiftUI

struct ContentView: View {
    @State private var order = Order()
    
    
    
    var body: some View {
        VStack {
            NavigationStack {
                Form {
                    Section {
                        Picker("Select your cake type", selection: $order.type) {
                            ForEach(Order.types.indices, id: \.self) {
                                Text(Order.types[$0])
                            }
                        }
                    }
                    Stepper("Number of cakes: \(order.quantity)", value: $order.quantity, in: 3...20)
                    
                    Section {
                        Toggle("Any special requests?", isOn: $order.specialRequestEnabled)
                        if order.specialRequestEnabled {
                            Toggle("Add extra frosting", isOn: $order.extraFrosting)
                            Toggle("Add extra spinkles", isOn: $order.addSprinkles)
                        }
                    }
                }
            }
        }
        
    }
    
}

#Preview {
    ContentView()
}
