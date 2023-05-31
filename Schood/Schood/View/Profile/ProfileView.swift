//
//  ProfileView.swift
//  Schood
//
//  Created by Matéo Deroche on 28/04/2023.
//

import SwiftUI

struct ProfileView: View {
    @State private var name:       String = ""
    @State private var lastname:   String = ""
    @State private var email:      String = ""
    
    var body: some View {
        ScrollView {
            VStack(alignment: .center) {
                
                Image("user_profile_png")
                    .scaleEffect(1.3)
                    .foregroundColor(.customPurple)
                    .padding(.top, UIScreen.main.bounds.height * 0.15)
                
                VStack {
                    
/// Name TextField
                    
                    Group {
                        Text("Name")
                            .foregroundColor(.customPurple)
                        
                        TextField("Name", text: $name)
                            .padding(.bottom)
                    }
                    
/// LastName TextField
                    
                    Group {
                        Text("Lastname")
                            .foregroundColor(.customPurple)
                        
                        TextField("LastName", text: $lastname)
                            .padding(.bottom)
                    }
                    
/// Email TextField
                    
                    Group {
                        Text("Email")
                            .foregroundColor(.customPurple)
                        
                        TextField("Email", text: $email)
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
