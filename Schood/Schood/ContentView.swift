//
//  ContentView.swift
//  Schood
//
//  Created by Matéo Deroche on 17/04/2023.
//

import SwiftUI
import CoreData

extension Color {
    static let customLightPink           = Color("CustomLightPink")
    static let customPurple              = Color("CustomPurple")
    static let customWrittingColor       = Color("CustomWrittingColor")
    static let customWrittingColorInvert = Color("CustomWrittingColorInvert")
}

struct ContentView: View {
    
    init() {
        UITabBar.appearance().isHidden = false
        UITabBar.appearance().isTranslucent = true
    }
    
    var body: some View {
        ConnectionView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
