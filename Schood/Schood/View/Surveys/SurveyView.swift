//
//  SurveyView.swift
//  Schood
//
//  Created by Matéo Deroche on 26/04/2023.
//

import SwiftUI

struct SurveyView: View {
    @State private var text:       String = ""
    
    var body: some View {
        NavigationView {
            ScrollView {
                
                VStack {
                    Text("How are you feeling today ?")
                        .font(.title2.weight(.semibold))
                        .foregroundColor(.customPurple)
                        .padding(.top, 90)
                        .padding(.bottom, 50)
                    
                    ///Hapiness rating
                    
                    HStack {
                        Button {
                            
                        } label: {
                            VStack {
                                Image(systemName: "face.smiling")
                                    .foregroundColor(.customPurple)
                                    .scaleEffect(3.5)
                                    .padding(.bottom, 50)
                                
                                Image(systemName: "checkmark.square")
                                    .foregroundColor(.customPurple)
                                    .scaleEffect(2)
                            }
                        }
                        .padding(.leading, 25)
                        .padding(.trailing, 25)
                        
                        Button {
                            
                        } label: {
                            VStack {
                                Image(systemName: "face.smiling")
                                    .foregroundColor(.customPurple)
                                    .scaleEffect(3.5)
                                    .padding(.bottom, 50)
                                
                                Image(systemName: "checkmark.square")
                                    .foregroundColor(.customPurple)
                                    .scaleEffect(2)
                            }
                        }
                        .padding(.leading, 25)
                        .padding(.trailing, 25)
                        
                        Button {
                            
                        } label: {
                            VStack {
                                Image(systemName: "face.smiling")
                                    .foregroundColor(.customPurple)
                                    .scaleEffect(3.5)
                                    .padding(.bottom, 50)
                                
                                Image(systemName: "checkmark.square")
                                    .foregroundColor(.customPurple)
                                    .scaleEffect(2)
                            }
                        }
                        .padding(.leading, 25)
                        .padding(.trailing, 25)
                        
                        Button {
                            
                        } label: {
                            VStack {
                                Image(systemName: "face.smiling")
                                    .foregroundColor(.customPurple)
                                    .scaleEffect(3.5)
                                    .padding(.bottom, 50)
                                
                                Image(systemName: "checkmark.square")
                                    .foregroundColor(.customPurple)
                                    .scaleEffect(2)
                            }
                        }
                        .padding(.leading, 25)
                        .padding(.trailing, 25)
                        
                        Button {
                            
                        } label: {
                            VStack {
                                Image(systemName: "face.smiling")
                                    .foregroundColor(.customPurple)
                                    .scaleEffect(3.5)
                                    .padding(.bottom, 50)
                                
                                Image(systemName: "checkmark.square")
                                    .foregroundColor(.customPurple)
                                    .scaleEffect(2)
                            }
                        }
                        .padding(.leading, 25)
                        .padding(.trailing, 25)
                        
                    }
                    
                    ///Question 1
                    Group {
                        VStack {
                            Text("Am I in good shape ?")
                                .font(.title2.weight(.semibold))
                                .foregroundColor(.customPurple)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.bottom, 5)
                                .padding(.leading, 15)
                            
                            ///Answer
                            
                            HStack {
                                Button {
                                    // ACTION REQUIRED
                                } label: {
                                    Image(systemName: "checkmark.square")
                                        .foregroundColor(.customPurple)
                                        .scaleEffect(1.5)
                                        .padding(.leading, 10)
                                        .padding(.trailing, 10)
                                    
                                    Text("yes")
                                        .font(.title2.weight(.semibold))
                                        .foregroundColor(.customPurple)
                                        .padding(.trailing, 30)
                                }
                                
                                Button {
                                    // ACTION REQUIRED
                                } label: {
                                    Image(systemName: "checkmark.square")
                                        .foregroundColor(.customPurple)
                                        .scaleEffect(1.5)
                                        .padding(.leading, 10)
                                        .padding(.trailing, 10)
                                    
                                    Text("no")
                                        .font(.title2.weight(.semibold))
                                        .foregroundColor(.customPurple)
                                        .padding(.trailing, 30)
                                }
                                
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 40)
                        }                    
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.top, 50)
                    
                    ///Question 2
                    Group {
                        VStack {
                            Text("Am I satisfied with my week ?")
                                .font(.title2.weight(.semibold))
                                .foregroundColor(.customPurple)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.bottom, 5)
                                .padding(.leading, 15)
                            
                            ///Answer
                            
                            HStack {
                                Button {
                                    // ACTION REQUIRED
                                } label: {
                                    Image(systemName: "checkmark.square")
                                        .foregroundColor(.customPurple)
                                        .scaleEffect(1.5)
                                        .padding(.leading, 10)
                                        .padding(.trailing, 10)
                                    
                                    Text("yes")
                                        .font(.title2.weight(.semibold))
                                        .foregroundColor(.customPurple)
                                        .padding(.trailing, 30)
                                }
                                
                                Button {
                                    // ACTION REQUIRED
                                } label: {
                                    Image(systemName: "checkmark.square")
                                        .foregroundColor(.customPurple)
                                        .scaleEffect(1.5)
                                        .padding(.leading, 10)
                                        .padding(.trailing, 10)
                                    
                                    Text("no")
                                        .font(.title2.weight(.semibold))
                                        .foregroundColor(.customPurple)
                                        .padding(.trailing, 30)
                                }
                                
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 40)
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.top, 50)
                    
                    
                    ///Question 3
                    Group {
                        VStack {
                            Text("Are the classes going well ?")
                                .font(.title2.weight(.semibold))
                                .foregroundColor(.customPurple)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.bottom, 5)
                                .padding(.leading, 15)
                            
                            ///Answer
                            
                            HStack {
                                Button {
                                    // ACTION REQUIRED
                                } label: {
                                    Image(systemName: "checkmark.square")
                                        .foregroundColor(.customPurple)
                                        .scaleEffect(1.5)
                                        .padding(.leading, 10)
                                        .padding(.trailing, 10)
                                    
                                    Text("yes")
                                        .font(.title2.weight(.semibold))
                                        .foregroundColor(.customPurple)
                                        .padding(.trailing, 30)
                                }
                                
                                Button {
                                    // ACTION REQUIRED
                                } label: {
                                    Image(systemName: "checkmark.square")
                                        .foregroundColor(.customPurple)
                                        .scaleEffect(1.5)
                                        .padding(.leading, 10)
                                        .padding(.trailing, 10)
                                    
                                    Text("no")
                                        .font(.title2.weight(.semibold))
                                        .foregroundColor(.customPurple)
                                        .padding(.trailing, 30)
                                }
                                
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 40)
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.top, 50)
                    
                    
                    ///Question 4
                    Group {
                        VStack {
                            Text("Do I feel like I have difficulties ?")
                                .font(.title2.weight(.semibold))
                                .foregroundColor(.customPurple)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.bottom, 5)
                                .padding(.leading, 15)
                            
                            ///Answer
                            
                            HStack {
                                Button {
                                    // ACTION REQUIRED
                                } label: {
                                    Image(systemName: "checkmark.square")
                                        .foregroundColor(.customPurple)
                                        .scaleEffect(1.5)
                                        .padding(.leading, 10)
                                        .padding(.trailing, 10)
                                    
                                    Text("yes")
                                        .font(.title2.weight(.semibold))
                                        .foregroundColor(.customPurple)
                                        .padding(.trailing, 30)
                                }
                                
                                Button {
                                    // ACTION REQUIRED
                                } label: {
                                    Image(systemName: "checkmark.square")
                                        .foregroundColor(.customPurple)
                                        .scaleEffect(1.5)
                                        .padding(.leading, 10)
                                        .padding(.trailing, 10)
                                    
                                    Text("no")
                                        .font(.title2.weight(.semibold))
                                        .foregroundColor(.customPurple)
                                        .padding(.trailing, 30)
                                }
                                
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 40)
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.top, 50)
                    
                    
                    ///Question 5
                    Group {
                        VStack {
                            Text("Do I have problems with classmates?")
                                .font(.title2.weight(.semibold))
                                .foregroundColor(.customPurple)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.bottom, 5)
                                .padding(.leading, 15)
                            
                            ///Answer
                            
                            HStack {
                                Button {
                                    // ACTION REQUIRED
                                } label: {
                                    Image(systemName: "checkmark.square")
                                        .foregroundColor(.customPurple)
                                        .scaleEffect(1.5)
                                        .padding(.leading, 10)
                                        .padding(.trailing, 10)
                                    
                                    Text("yes")
                                        .font(.title2.weight(.semibold))
                                        .foregroundColor(.customPurple)
                                        .padding(.trailing, 30)
                                }
                                
                                Button {
                                    // ACTION REQUIRED
                                } label: {
                                    Image(systemName: "checkmark.square")
                                        .foregroundColor(.customPurple)
                                        .scaleEffect(1.5)
                                        .padding(.leading, 10)
                                        .padding(.trailing, 10)
                                    
                                    Text("no")
                                        .font(.title2.weight(.semibold))
                                        .foregroundColor(.customPurple)
                                        .padding(.trailing, 30)
                                }
                                
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 40)
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.top, 50)
                    
                    TextField("I Feel like talking ...", text: $text)
                        .textFieldStyle(OvalTextFieldStyle())
                        .padding(.horizontal, UIScreen.main.bounds.width * 0.1)
                        .padding(.top, UIScreen.main.bounds.height * 0.05)
                    
                    Button {
                        // ACTION REQUIRED
                    } label: {
                        Text("Save")
                            .frame(width: UIScreen.main.bounds.width * 0.5, height: UIScreen.main.bounds.height * 0.05)
                            .font(.title2.weight(.semibold))
                            .background(Color.customPurple)
                            .foregroundColor(.customWrittingColorInvert)
                            .cornerRadius(26)
                            .padding(.top, UIScreen.main.bounds.height * 0.05)
                    }
                    
                }
                .padding(.bottom, 100)
                
            }
            .background(Color.customWrittingColorInvert)
            .ignoresSafeArea(.all)
            .navigationBarItems(trailing: ProfileButton())
        }
    }
}

struct SurveyView_Previews: PreviewProvider {
    static var previews: some View {
        SurveyView()
    }
}
