//
//  CreateUser.swift
//  CupcakeCorner-HwS-iOS_17
//
//  Created by Seika Hirori on 1/16/24.
//

import SwiftUI

struct CreateUser: View {
    @State private var username: String = ""
    @State private var email: String = ""
    
    var disableForm: Bool {
        username.count < 5 || email.count < 5
    }
    
    var body: some View {
        Form {
            Section {
                TextField("Username", text: $username)
                TextField("Email", text: $email)
            }
            
            Section {
                Button("Create account") {
                    print("Creating account")
                }
            }
            .disabled(disableForm)
        }
    }
}

#Preview {
    CreateUser()
}
