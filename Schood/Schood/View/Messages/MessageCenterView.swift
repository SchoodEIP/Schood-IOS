//
//  MessageCenterView.swift
//  Schood
//
//  Created by Matéo Deroche on 02/05/2023.
//

import SwiftUI

struct MessageCenterView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                
                Rectangle()
                    .cornerRadius(26)
                    .foregroundColor(.customPurple)
                    .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.1)
                    .padding(.top, 50)
                    .overlay(
                        NavigationLink(destination: {
                            MessageView()
                        }, label: {
                            VStack(alignment: .leading) {
                                Text("Name")
                                    .foregroundColor(.customWrittingColorInvert)
                                    .font(.title2.weight(.semibold))
                                    .position(x: 50, y: 60)
                                    .padding(.top)
                                
                                Text("MessageContent")
                                    .foregroundColor(.customWrittingColorInvert)
                                    .font(.title3.weight(.semibold))
                                    .position(x: 100, y: 35)
                                
                            }
                            }
                        )
                    )
                
            }
            .navigationBarItems(trailing: ProfileButton())
        }
    }
}

struct MessageCenterView_Previews: PreviewProvider {
    static var previews: some View {
        MessageCenterView()
    }
}
