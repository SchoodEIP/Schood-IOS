//
//  CustomTabView.swift
//  Schood
//
//  Created by Matéo Deroche on 29/04/2023.
//

import SwiftUI

struct CustomTabView: View {
    var body: some View {
        TabView{
            HomePageView()
                .tabItem { Label("Homepage", systemImage: "house") }
            
            HistoricSurveyView()
                .tabItem { Label("Survey", systemImage: "doc.plaintext") }
            
            StatisticView()
                .tabItem { Label("Stats", systemImage: "chart.bar") }
            
            MessageCenterView()
                .tabItem { Label("Message", systemImage: "message") }
            
            HelpNumberCategoriesView()
                .tabItem { Label("Contact", systemImage: "list.bullet.circle") }
        }
        
        .accentColor(.customPurple)
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView()
    }
}
