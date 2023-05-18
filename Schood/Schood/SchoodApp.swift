//
//  SchoodApp.swift
//  Schood
//
//  Created by Matéo Deroche on 17/04/2023.
//

import SwiftUI

@main
struct SchoodApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
