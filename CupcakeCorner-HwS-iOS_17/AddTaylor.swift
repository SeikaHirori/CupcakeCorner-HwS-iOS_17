//
//  AddTaylor.swift
//  CupcakeCorner-HwS-iOS_17
//
//  Created by Seika Hirori on 1/16/24.
//
/* Section "Adding Codable conformance to an @Observable class
 * https://arc.net/l/quote/xeenbwzg
 */


import SwiftUI

struct AddTaylor: View {
    
    var body: some View {
        Button("Encode Taylor", action: encodeTaylor)
    }
    
    func encodeTaylor() {
        let data = try! JSONEncoder().encode(User())
        let str = String(decoding: data, as: UTF8.self)
//        print(str)
    }
}

#Preview {
    AddTaylor()
}
