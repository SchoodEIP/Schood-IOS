//
//  ConnectionView.swift
//  Schood
//
//  Created by Matéo Deroche on 06/05/2023.
//

import SwiftUI
import UIKit

struct ConnectionView: View {
    @State var email                    = ""
    @State var password                 = ""
    @State var wrongPassword            = 0
    @State private var wrongEmail       = 0
    
    @State private var isLoginValid         = false
    @State private var showLoginScreen  = false
    @State private var shouldShowLoginAlert = false
    @State private var showAlert               = false
    
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
                    .alert(isPresented: $showAlert, content: {
                        Alert(title: Text("Wrong Email or Password"))
                    })
                        .foregroundColor(.customWrittingColorInvert)
                        .padding()
                        .background(Color.customPurple)
                        .cornerRadius(25)
                    
                    NavigationLink(destination: AccountCreationView(), label: {
                        Text("No Account? click here")
                            .font(.footnote)
                            .foregroundColor(.customPurple)
                            .padding(.top, UIScreen.main.bounds.height * 0.01)
                            .padding(.bottom, UIScreen.main.bounds.height * 0.0001)
                    })
                            
                    NavigationLink(destination: CustomTabView(), isActive: $showLoginScreen) {
                        EmptyView()
                    }

                    Spacer()
                    
                    NavigationLink(destination: ResetPassword(), label: {
                        Text("Password forgotten? click here")
                            .font(.footnote)
                            .foregroundColor(.customPurple)
                            .padding(.bottom, UIScreen.main.bounds.height * 0.0001)
                    })
                            
                }
                .textFieldStyle(OvalTextFieldStyle())
                .padding(.horizontal, UIScreen.main.bounds.width * 0.1)
                        
            }
        }
        .navigationBarBackButtonHidden(true)
    }
    
    func apiCall() {
        let body: [String: AnyHashable] = [
            "email": email,
            "password": password
        ]
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
            return
        }
        
        print("MAKING API CALL FOR CONNECTION...")
        
        var request = URLRequest(url: url)
        //method, body, headers
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = try? JSONSerialization.data(withJSONObject: body, options: . fragmentsAllowed)
        
        //make the request
        let task = URLSession.shared.dataTask(with: request) { data, _, error in
            guard let data = data, error == nil else {return}
            
            do {
                let response = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
                print("SUCCESS: \(response)")
            } catch {
                print(error)
            }
        }
        task.resume()
    }
    
    func authenticateUser(email: String, password: String) {
        if email.lowercased() == "student1@schood.fr" {
            apiCall()
            wrongEmail = 0
            if password.lowercased() == "student123" {
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

struct ConnectionView_Previews: PreviewProvider {
    static var previews: some View {
        ConnectionView()
    }
}
