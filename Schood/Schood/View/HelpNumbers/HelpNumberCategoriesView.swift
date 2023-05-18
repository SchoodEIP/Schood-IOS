//
//  HelpNumberCategoriesView.swift
//  Schood
//
//  Created by Matéo Deroche on 28/04/2023.
//

import SwiftUI

struct HelpNumberCategoriesView: View {
    private let categories: [HelpCategory] = [
        HelpCategory(name: "Toll-free numbers"),
        HelpCategory(name: "Health professionals"),
        HelpCategory(name: "Emergency Numbers"),
        HelpCategory(name: "Chatbox")
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                
///Toll Free Numbers Bubble
                
                NavigationLink(destination: {
                    TollFreeNumbersListView()
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.customPurple)
                            .frame(height: 70)
                        HStack {
                            Text("Toll-free numbers")
                                .foregroundColor(.customWrittingColorInvert)
                                .font(.title2)
                                .fontWeight(.medium)
                            
                            Spacer()
                            
                            Text("See more")
                                .font(.title3.weight(.semibold))
                                .foregroundColor(.customWrittingColorInvert)
                            
                            Image(systemName: "arrow.right")
                                .foregroundColor(.customWrittingColorInvert)
                        }
                        .padding()
                    }
                    .padding()
                })
                
///Health Profesionnal Bubble
                
                NavigationLink(destination: {
                    HelpNumberCategoriesView()
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.customPurple)
                            .frame(height: 70)
                        HStack {
                            Text("Health professionals")
                                .foregroundColor(.customWrittingColorInvert)
                                .font(.title2)
                                .fontWeight(.medium)
                            
                            Spacer()
                            
                            Text("See more")
                                .font(.title3.weight(.semibold))
                                .foregroundColor(.customWrittingColorInvert)
                            
                            Image(systemName: "arrow.right")
                                .foregroundColor(.customWrittingColorInvert)
                        }
                        .padding()
                    }
                    .padding()
                })
                
///Emergency Numbers Bubble
                
                NavigationLink(destination: {
                    HelpNumberCategoriesView()
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.customPurple)
                            .frame(height: 70)
                        HStack {
                            Text("Emergency Numbers")
                                .foregroundColor(.customWrittingColorInvert)
                                .font(.title2)
                                .fontWeight(.medium)
                            
                            Spacer()
                            
                            Text("See more")
                                .font(.title3.weight(.semibold))
                                .foregroundColor(.customWrittingColorInvert)
                            
                            Image(systemName: "arrow.right")
                                .foregroundColor(.customWrittingColorInvert)
                        }
                        .padding()
                    }
                    .padding()
                })
                
///Chatbox Bubble
                
                NavigationLink(destination: {
                    HelpNumberCategoriesView()
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.customPurple)
                            .frame(height: 70)
                        HStack {
                            Text("Chatbox")
                                .foregroundColor(.customWrittingColorInvert)
                                .font(.title2)
                                .fontWeight(.medium)
                            
                            Spacer()
                            
                            Text("See more")
                                .font(.title3.weight(.semibold))
                                .foregroundColor(.customWrittingColorInvert)
                            
                            Image(systemName: "arrow.right")
                                .foregroundColor(.customWrittingColorInvert)
                        }
                        .padding()
                    }
                    .padding()
                })
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.customWrittingColorInvert)
            .ignoresSafeArea()
            .navigationBarItems(trailing: ProfileButton())
        }
    }
}

struct HelpNumberCategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        HelpNumberCategoriesView()
    }
}

struct HelpCategory: Identifiable {
    let id = UUID()
    var name: String
}
