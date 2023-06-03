//
//  AccountCreationView.swift
//  Schood
//
//  Created by Matéo Deroche on 21/05/2023.
//

import SwiftUI

struct AccountCreationView: View {
    @State var email                    = ""
    @State var password                 = ""
    @State var name                     = ""
    @State var lastname                 = ""
    @State var wrongPassword            = 0
    @State private var wrongEmail       = 0
    
    @State private var isLoginValid         = false
    @State private var showLoginScreen      = false
    @State private var shouldShowLoginAlert = false
    @State private var showAlert            = false
    
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                
                Image("logo_schood_1024x512")
                    .padding(.top, UIScreen.main.bounds.height * 0.1)
                        
                VStack {
                            
                    Spacer()
    
/// Email & Password TextField
                            
                    Group {
                        Text("Email")
                            .foregroundColor(.customPurple)
                        
                        TextField("Email", text: $email)
                            .padding(.bottom)
                        
                        Text("Name")
                            .foregroundColor(.customPurple)
                        
                        TextField("Name", text: $name)
                            .padding(.bottom)
                        
                        Text("Lastname")
                            .foregroundColor(.customPurple)
                        
                        TextField("Lastname", text: $lastname)
                            .padding(.bottom)
                        
                        Text("Password")
                            .foregroundColor(.customPurple)
                        
                        SecureField("Password", text: $password)
                            .padding(.bottom)
                    }
                                                        
                    Spacer()
                            
/// Connection Button
                          
                    NavigationLink(destination: {
                        CustomTabView()
                        
                    }, label: {
                        Text("Create Account")
                            .foregroundColor(.customWrittingColorInvert)
                            .padding()
                            .background(Color.customPurple)
                            .cornerRadius(25)
                    })

                        //                    Button("Create Account") {
//                        CustomTabView()
//                    }
//                        .foregroundColor(.customWrittingColorInvert)
//                        .padding()
//                        .background(Color.customPurple)
//                        .cornerRadius(25)
//
//                    NavigationLink(destination: CustomTabView(), isActive: $showLoginScreen) {
//                        EmptyView()
//                    }

                    Spacer()
                            
                }
                .textFieldStyle(OvalTextFieldStyle())
                .padding(.horizontal, UIScreen.main.bounds.width * 0.1)
                        
            }
        }
        .navigationBarBackButtonHidden(true)
    }
    
    func authenticateUser(email: String, password: String) {
        if email.lowercased() == "email" {
            wrongEmail = 0
            if password.lowercased() == "password" {
                wrongPassword = 0
                showLoginScreen = true
            } else {
                wrongPassword = 2
                showAlert = true
            }
        } else {
            wrongEmail = 2
            showAlert = true
        }
    }
    
}

struct AccountCreationView_Previews: PreviewProvider {
    static var previews: some View {
        AccountCreationView()
    }
}
