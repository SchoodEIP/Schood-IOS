//
//  AlertView.swift
//  Schood
//
//  Created by Matéo Deroche on 27/04/2023.
//

import SwiftUI

struct AlertView: View {
    var body: some View {
        ScrollView {
            VStack {
                
                /// First Alert Bubble
                
                Rectangle()
                    .cornerRadius(26)
                    .foregroundColor(.customPurple)
                    .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.3)
                    .padding(.leading, 30)
                    .padding(.trailing, 30)
                    .overlay(
                        VStack {
                            HStack {
                                Text("Mr. Example")
                                    .font(.title2.weight(.semibold))
                                    .foregroundColor(.customWrittingColorInvert)
                                    .position(x: 110, y: 30)
                                
                                NavigationLink(destination: {
                                    SurveyView()
                                }, label: {
                                    Text("See more")
                                        .font(.title3.weight(.semibold))
                                        .foregroundColor(.customWrittingColorInvert)
                                        .position(x: 105, y: 30)
                                    
                                    Image(systemName: "arrow.right")
                                        .foregroundColor(.customWrittingColorInvert)
                                        .position(x: 50, y: 31)
                                })
                            }
                            
                            Text("test 1")
                                .font(.headline.weight(.semibold))
                                .foregroundColor(.customWrittingColorInvert)
                                .position(x: 100, y: 0)
                            
                        }
                    )
                    .padding(.top, 100)
                    .padding(.bottom, 25)
                
                /// Second Alert Bubble
                
                Rectangle()
                    .cornerRadius(26)
                    .foregroundColor(.customPurple)
                    .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.3)
                    .padding(.leading, 30)
                    .padding(.trailing, 30)
                    .overlay(
                        VStack {
                            HStack {
                                Text("Mr. Example")
                                    .font(.title2.weight(.semibold))
                                    .foregroundColor(.customWrittingColorInvert)
                                    .position(x: 110, y: 30)
                                
                                NavigationLink(destination: {
                                    SurveyView()
                                }, label: {
                                    Text("See more")
                                        .font(.title3.weight(.semibold))
                                        .foregroundColor(.customWrittingColorInvert)
                                        .position(x: 105, y: 30)
                                    
                                    Image(systemName: "arrow.right")
                                        .foregroundColor(.customWrittingColorInvert)
                                        .position(x: 50, y: 31)
                                })
                            }
                            
                            Text("test 2")
                                .font(.headline.weight(.semibold))
                                .foregroundColor(.customWrittingColorInvert)
                                .position(x: 100, y: 0)
                            
                        }
                    )
                    .padding(.bottom, 25)
                
                /// Third Alert Bubble
                
                Rectangle()
                    .cornerRadius(26)
                    .foregroundColor(.customPurple)
                    .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.3)
                    .padding(.leading, 30)
                    .padding(.trailing, 30)
                    .overlay(
                        VStack {
                            HStack {
                                Text("Mr. Example")
                                    .font(.title2.weight(.semibold))
                                    .foregroundColor(.customWrittingColorInvert)
                                    .position(x: 110, y: 30)
                                
                                NavigationLink(destination: {
                                    SurveyView()
                                }, label: {
                                    Text("See more")
                                        .font(.title3.weight(.semibold))
                                        .foregroundColor(.customWrittingColorInvert)
                                        .position(x: 105, y: 30)
                                    
                                    Image(systemName: "arrow.right")
                                        .foregroundColor(.customWrittingColorInvert)
                                        .position(x: 50, y: 31)
                                })
                            }
                            
                            Text("test3")
                                .font(.headline.weight(.semibold))
                                .foregroundColor(.customWrittingColorInvert)
                                .position(x: 100, y: 0)
                            
                        }
                    )
                    .padding(.bottom, 25)
                
            }
        }
        .background(Color.customWrittingColorInvert)
        .ignoresSafeArea(.all)
        .navigationBarItems(trailing: ProfileButton()) /// WE HAVE AN ISSUE
    }
}

struct AlertView_Previews: PreviewProvider {
    static var previews: some View {
        AlertView()
    }
}
