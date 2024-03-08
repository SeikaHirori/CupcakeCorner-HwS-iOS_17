//
//  AddressView.swift
//  CupcakeCorner-HwS-iOS_17
//
//  Created by Seika Hirori on 1/16/24.
//

import SwiftUI

struct AddressView: View {
    @Bindable var order: Order
    
    var body: some View {
        VStack {
            Form {
                Section {
                    TextField("Name", text: $order.name)
                    TextField("Street Address", text: $order.streetAddress)
                    TextField("City", text: $order.city)
                    TextField("Zip", text: $order.zip)
                }
                
                Section {
                    NavigationLink("Check out") {
                        CheckOutView(order: order)
                    }
                }
            }
            .navigationTitle("Delivery details")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    AddressView(order: Order())
}
