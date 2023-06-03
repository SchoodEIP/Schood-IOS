//
//  ResetPassword.swift
//  Schood
//
//  Created by Matéo Deroche on 31/05/2023.
//

import SwiftUI

struct ResetPassword: View {
    @State private var newPassword             = ""
    @State private var confirmPassword         = ""
    @State private var wrongConfirmPassword    = 0
    @State private var wrongNewPassword        = 0
    @State private var showLoginScreen         = false
    @State private var showAlert               = false
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                
                Spacer()
                
                Group {
                    Text("Enter New Password")
                        .foregroundColor(.customPurple)
                    SecureField("New Password", text: $newPassword)
                        .padding(.bottom, UIScreen.main.bounds.height * 0.015)
                    
                    Text("Confirm New Password")
                        .foregroundColor(.customPurple)
                    SecureField("Confirm New Password", text: $confirmPassword)
                }
                
                Spacer()
                
                Button("Save") {
                    checkPassword(newPassword: newPassword, confirmPassword: confirmPassword)
                }
                .alert(isPresented: $showAlert, content: {
                    Alert(title: Text("Wrong Password"))
                })
                .foregroundColor(.customWrittingColorInvert)
                .padding()
                .padding(.horizontal, UIScreen.main.bounds.width * 0.1)
                .background(Color.customPurple)
                .cornerRadius(25)
                
                NavigationLink(destination: ConnectionView(), isActive: $showLoginScreen) {
                    EmptyView()
                }
                
                Spacer()
            }
            .textFieldStyle(OvalTextFieldStyle())
            .padding(.horizontal, UIScreen.main.bounds.width * 0.1)
        }
        .navigationBarBackButtonHidden(true)
    }
    
    func checkPassword(newPassword: String, confirmPassword: String) {
        if newPassword.lowercased() == confirmPassword.lowercased() {
            wrongNewPassword = 0
        } else {
            showAlert = true
            wrongNewPassword = 2
        }
    }
}

struct ResetPassword_Previews: PreviewProvider {
    static var previews: some View {
        ResetPassword()
    }
}
