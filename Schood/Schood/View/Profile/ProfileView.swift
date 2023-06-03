//
//  ProfileView.swift
//  Schood
//
//  Created by Matéo Deroche on 28/04/2023.
//

import SwiftUI

struct ProfileView: View {
    @State private var name:       String = "Mateo"
    @State private var lastname:   String = "Deroche"
    @State private var classe:     String = "Terminal"
    @State private var email:      String = "student1@schood.fr"
    
    var body: some View {
        ScrollView {
            VStack(alignment: .center) {
                
                Image("user_profile_png")
                    .scaleEffect(1.3)
                    .foregroundColor(.customPurple)
                    .padding(.top, UIScreen.main.bounds.height * 0.15)
                
                VStack {
                    
/// Name TextField
                    
                    Text("Name : \(name)")
                        .foregroundColor(.customPurple)
                        .padding(.bottom)
                    
/// LastName TextField
                    Text("Lastname : \(lastname)")
                        .foregroundColor(.customPurple)
                        .padding(.bottom)
                    
/// Class TextField
                    Text("Class : \(classe)")
                        .foregroundColor(.customPurple)
                        .padding(.bottom)
                    
/// Email TextField
                    
                    Group {
                        Text("Email")
                            .foregroundColor(.customPurple)
                        
                        TextField("\(email)", text: $email)
                            .padding(.bottom)
                    }
                    
/// UpdateInformation Button
                    
                    Group {
                        Button("Save Informations") {
                            
                        }
                        .foregroundColor(.customWrittingColorInvert)
                        .padding()
                        .background(Color.customPurple)
                        .cornerRadius(25)
                    }
                    .padding()
                    
                }
                .textFieldStyle(OvalTextFieldStyle())
                .padding(.top, UIScreen.main.bounds.height * 0.1)
                .padding(.horizontal, UIScreen.main.bounds.width * 0.1)

            }
        }
        .background(Color.customWrittingColorInvert)
        .ignoresSafeArea(.all)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

struct OvalTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(10)
            .background(Color.customLightPink)
            .cornerRadius(20)
    }
}
