//
//  HelpNumberSubCategoriesView.swift
//  Schood
//
//  Created by Matéo Deroche on 24/05/2023.
//

import SwiftUI

struct HelpNumberSubCategoriesView: View {
    private var number: [NumberList] = NumberList.allNumber
    
    var body: some View {
        NavigationView {
            List {
                ForEach(number, id: \.name) { number in
                    Section {
                        NavigationLink(destination: HelpNumberDetailView(number: number)) {
                            Text("\(number.name)")
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

struct HelpNumberSubCategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        HelpNumberSubCategoriesView()
    }
}
