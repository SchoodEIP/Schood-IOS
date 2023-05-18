//
//  ConnectionView.swift
//  Schood
//
//  Created by Matéo Deroche on 06/05/2023.
//

import SwiftUI
import UIKit

struct ConnectionView: View {
    @State private var email            = ""
    @State private var password         = ""
    @State private var wrongPassword    = 0
    @State private var wrongEmail       = 0
    @State private var showLoginScreen  = false
    
    @State private var isLoginValid: Bool = false
    @State private var shouldShowLoginAlert: Bool = false

    
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                        
// TODO: PUT LOGO HERE
                    
                        
                VStack {
                            
                    Spacer()
    
/// Email & Password TextField
                            
                    Group {
                        Text("Email")
                            .foregroundColor(.customPurple)
                        TextField("Email", text: $email)
                            .padding(.bottom)
                        Text("Password")
                            .foregroundColor(.customPurple)
                        SecureField("Password", text: $password)
                            .padding(.bottom)
                    }
                                                        
                    Spacer()
                            
/// Connection Button
                            
                    Button("Connection") {
                        authenticateUser(email: email, password: password)
                    }
                        .foregroundColor(.customWrittingColorInvert)
                        .padding()
                        .background(Color.customPurple)
                        .cornerRadius(25)
                            
                    NavigationLink(destination: CustomTabView(), isActive: $showLoginScreen) {
                        EmptyView()
                    }

                    Spacer()
                            
                }
                .textFieldStyle(OvalTextFieldStyle())
                .padding(.horizontal, UIScreen.main.bounds.width * 0.1)
                        
            }
//                )
        }
        .navigationBarHidden(true)
    }
    
    func authenticateUser(email: String, password: String) {
        if email.lowercased() == "email" {
            wrongEmail = 0
            if password.lowercased() == "password" {
                wrongPassword = 0
                showLoginScreen = true
            } else {
                wrongPassword = 2
            }
        } else {
            wrongEmail = 2
        }
    }
    
}

struct ConnectionView_Previews: PreviewProvider {
    static var previews: some View {
        ConnectionView()
    }
}
