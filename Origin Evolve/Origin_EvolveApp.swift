//
//  Origin_EvolveApp.swift
//  Origin Evolve
//
//  Created by Tyler Phillips on 9/22/22.
//

import SwiftUI

@main
struct Origin_EvolveApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
