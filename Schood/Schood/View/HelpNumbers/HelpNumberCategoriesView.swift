//
//  HelpNumberCategoriesView.swift
//  Schood
//
//  Created by Matéo Deroche on 28/04/2023.
//

import SwiftUI

struct HelpNumberCategoriesView: View {
    private var number: [NumberList] = NumberList.allNumber
//    private var numberContent: [Content] = Content.allContent
    
    var body: some View {
        NavigationView {
            List {
                ForEach(number, id: \.category) { number in
                    Section {
                        NavigationLink(destination: HelpNumberDetailView(number: number)) {
                            Text("\(number.category)")
                                .font(.title2)
                                .fontWeight(.medium)
                        }
                        .padding()
                        .background(Color.customPurple)
                    }
                }
                .cornerRadius(26)
                .padding()
                .foregroundColor(.customWrittingColorInvert)
            }
            .navigationBarItems(trailing: ProfileButton())
        }
        .listStyle(.plain)
        .background(Color.customWrittingColorInvert)
        .navigationBarItems(trailing: ProfileButton())
    }
}

struct HelpNumberCategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        HelpNumberCategoriesView()
    }
}
