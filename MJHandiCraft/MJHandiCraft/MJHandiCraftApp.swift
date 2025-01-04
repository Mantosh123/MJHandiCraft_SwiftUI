//
//  MJHandiCraftApp.swift
//  MJHandiCraft
//
//  Created by Mantosh Kumar on 03/01/25.
//

import SwiftUI
import SwiftData

@main
struct MJHandiCraftApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            SplashView()
        }
        .modelContainer(sharedModelContainer)
    }
}
