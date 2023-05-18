//
//  TollFreeNumbersListView.swift
//  Schood
//
//  Created by Matéo Deroche on 02/05/2023.
//

import SwiftUI

struct TollFreeNumbersListView: View {
    private var tollFreeHelpNumbers = tollFreeNumbers
    
    var body: some View {
        NavigationView {
            List {
                ForEach(tollFreeHelpNumbers, id: \.self) { number in
                    Section {
                        NavigationLink(destination: Text("uio")) {
                            Text(number)
                                .font(.title2)
                                .fontWeight(.medium)
                        }
                        .padding()
                        .background(Color.customPurple)
                    }
                    .cornerRadius(26)
                    .padding()
                    .foregroundColor(.customWrittingColorInvert)
                }
            }
            //        .padding(.top, UIScreen.main.bounds.height * 0.1)
            .listStyle(.plain)
            .background(Color.customWrittingColorInvert)
            .navigationBarItems(trailing: ProfileButton())
        }
    }
}

struct TollFreeNumbersListView_Previews: PreviewProvider {
    static var previews: some View {
        TollFreeNumbersListView()
    }
}
