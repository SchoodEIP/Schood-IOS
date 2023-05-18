//
//  Design.swift
//  Schood
//
//  Created by Matéo Deroche on 18/04/2023.
//

import SwiftUI

struct Design: View {
    @State var name: String
    
    var body: some View {
        ZStack(alignment: .leading){
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.customPurple)
                .frame(height: 70)
            VStack(alignment: .leading){
                Text("\(name)")
                    .foregroundColor(.customWrittingColorInvert)
                    .font(.title2)
                    .fontWeight(.medium)
            }
            .padding()
        }
        .padding()
    }
}

struct Design_Previews: PreviewProvider {
    static var previews: some View {
        Design(name: "Name")
    }
}
