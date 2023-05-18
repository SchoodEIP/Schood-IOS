//
//  HomePageView.swift
//  Schood
//
//  Created by Matéo Deroche on 23/04/2023.
//

import SwiftUI

struct HomePageView: View {
    
    init() {}
    
    var body: some View {
        NavigationView {
            ScrollView {
                
/// Welcome Text
 
                ZStack {
                    WelomeText(text: "Hi Mateo !\nHow we feeling today ?")
                }
                    
/// Weekly stats bubble

                VStack{
                    Rectangle()
                        .cornerRadius(26)
                        .foregroundColor(.customPurple)
                        .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.3)
                        .overlay(
                            HStack {
                                Text("Weekly Stats")
                                    .font(.title.weight(.semibold))
                                    .foregroundColor(.customWrittingColorInvert)
                                    .position(x: 100, y: 40)
                                
                                NavigationLink(destination: {
                                    StatisticView()
                                }, label: {
                                    Text("See more")
                                        .font(.title3.weight(.semibold))
                                        .foregroundColor(.customWrittingColorInvert)
                                        .position(x: 100, y: 40)
                                    
                                    Image(systemName: "arrow.right")
                                        .foregroundColor(.customWrittingColorInvert)
                                        .position(x: 60, y: 41)
                                    
                                })
                            }
                        )
                        .padding(.bottom, 25)
                    
/// Survey Bubble
                    
                    Rectangle()
                        .cornerRadius(26)
                        .foregroundColor(.customPurple)
                        .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.3)
                        .overlay(
                            HStack {
                                Text("Surveys")
                                    .font(.title.weight(.semibold))
                                    .foregroundColor(.customWrittingColorInvert)
                                    .position(x: 67,y: 40)
                                
                                NavigationLink(destination: {
                                    HistoricSurveyView()
                                }, label: {
                                    Text("See more")
                                        .font(.title3.weight(.semibold))
                                        .foregroundColor(.customWrittingColorInvert)
                                        .position(x: 100, y: 40)
                                    
                                    Image(systemName: "arrow.right")
                                        .foregroundColor(.customWrittingColorInvert)
                                        .position(x: 60, y: 41)
                                })
                            }
                        )
                        .padding(.bottom, 25)
                    
/// Latest alerts bubble
                    
                    Rectangle()
                        .cornerRadius(26)
                        .foregroundColor(.customPurple)
                        .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.3)
                        .overlay(
                            HStack {
                                Text("Latest Alerts")
                                    .font(.title.weight(.semibold))
                                    .foregroundColor(.customWrittingColorInvert)
                                    .position(x: 100, y: 40)
                                
                                NavigationLink(destination: {
                                    AlertView()
                                }, label: {
                                    Text("See more")
                                        .font(.title3.weight(.semibold))
                                        .foregroundColor(.customWrittingColorInvert)
                                        .position(x: 100, y: 40)
                                    
                                    Image(systemName: "arrow.right")
                                        .foregroundColor(.customWrittingColorInvert)
                                        .position(x: 60, y: 41)
                                })
                            }
                        )
                        .padding(.bottom, 100)
                    
                }
            }
            .navigationBarBackButtonHidden(true)
            .background(Color.customWrittingColorInvert)
            .ignoresSafeArea(.all)
            .navigationBarItems(trailing: ProfileButton())
            
        }
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}

struct WelomeText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.title.weight(.semibold))
            .foregroundColor(.customWrittingColor)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, UIScreen.main.bounds.width * 0.05)
            .padding(.top, UIScreen.main.bounds.width * 0.15)
    }
}

struct ProfileButton: View {
    var body: some View {
        NavigationLink(destination: {
            ProfileView()
        }, label: {
            Image(systemName: "person.crop.circle")
                .foregroundColor(.customPurple)
                .scaleEffect(1.25)
        })
    }
}
