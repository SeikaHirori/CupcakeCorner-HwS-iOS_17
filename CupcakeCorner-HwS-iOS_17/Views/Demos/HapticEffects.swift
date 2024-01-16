//
//  HapticEffects.swift
//  CupcakeCorner-HwS-iOS_17
//
//  Created by Seika Hirori on 1/16/24.
//
// Section: "Adding haptic effects"
// https://www.hackingwithswift.com/books/ios-swiftui/adding-haptic-effects

// STOPPING DEMO at this part: https://arc.net/l/quote/pufrqpms
// Reason for stopping: Not testing on real device, so skipping for now

import SwiftUI

struct HapticEffects: View {
    @State private var counter = 0
    
    var body: some View {
        Button("Tap Count: \(counter)") {
            counter += 1
        }
        .sensoryFeedback(.impact(flexibility: .soft, intensity: 0.5), trigger: counter)
    }
}

#Preview {
    HapticEffects()
}
