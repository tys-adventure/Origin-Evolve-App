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
            TabView() {
                homeView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                landmarksList()
                    .tabItem {
                        Label("Landmarks", systemImage: "map.fill")
                    }
                eventView()
                    .tabItem {
                        Label("Events", systemImage: "calendar")
                    }
                accountView(landmark: landmarks[0])
                    .tabItem {
                        Label("Account", systemImage: "person")
                    }
            }
            .accentColor(.green)
//            ContentView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
