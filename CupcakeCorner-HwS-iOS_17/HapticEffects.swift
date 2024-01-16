//
//  HapticEffects.swift
//  CupcakeCorner-HwS-iOS_17
//
//  Created by Seika Hirori on 1/16/24.
//
// Section: "Adding haptic effects"
// https://www.hackingwithswift.com/books/ios-swiftui/adding-haptic-effects

import SwiftUI

struct HapticEffects: View {
    @State private var counter = 0
    
    var body: some View {
        Button("Tap Count: \(counter)") {
            counter += 1
        }
        .sensoryFeedback(.increase, trigger: counter)
    }
}

#Preview {
    HapticEffects()
}
