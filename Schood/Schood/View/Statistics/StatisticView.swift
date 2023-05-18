//
//  StatisticView.swift
//  Schood
//
//  Created by Matéo Deroche on 27/04/2023.
//

import SwiftUI

struct StatisticView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                Text("This is the statistic view")
            }
            .navigationBarItems(trailing: ProfileButton())
        }
    }
}

struct StatisticView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticView()
    }
}
