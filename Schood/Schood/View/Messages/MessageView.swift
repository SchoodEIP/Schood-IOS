//
//  MessageView.swift
//  Schood
//
//  Created by Matéo Deroche on 14/05/2023.
//

import SwiftUI

struct MessageView: View {
    var contactName = "name of the Contact"
    var textReceived = "message received"
    var textSent = "message sent"
    
    var body: some View {
        ScrollView {
            VStack {
                Rectangle()
                    .border(.pink)
                    .multilineTextAlignment(.leading)
                    .cornerRadius(26)
                    .frame(width: UIScreen.main.bounds.width * 0.6)
                    .frame(height: UIScreen.main.bounds.width * 0.6)
                    .foregroundColor(.customPurple)
                    .overlay (
                        Text("\(textReceived)")
                            .font(.body)
                            .foregroundColor(.customWrittingColorInvert)

                    )
                    .padding(.trailing, UIScreen.main.bounds.width * 0.35)
                    .padding(.bottom, 35)
                
                Rectangle()
                    .cornerRadius(26)
                    .frame(width: UIScreen.main.bounds.width * 0.6)
                    .frame(height: UIScreen.main.bounds.width * 0.6)
                    .foregroundColor(.customLightPink)
                    .overlay (
                        Text("\(textSent)")
                            .font(.body)
                            .foregroundColor(.customWrittingColor)
                            .multilineTextAlignment(.leading)
                    )
                    .padding(.leading, UIScreen.main.bounds.width * 0.35)
                    .padding(.bottom, 35)
            }
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView()
    }
}
