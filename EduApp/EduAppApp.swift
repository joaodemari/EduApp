//
//  EduAppApp.swift
//  EduApp
//
//  Created by Foundation05 on 21/11/23.
//

import SwiftUI
import SwiftData

var sharedModelContainer: ModelContainer = {
    let schema = Schema([
        Area.self, Note.self
    ])
    let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

    do {
        return try ModelContainer(for: schema, configurations: [modelConfiguration])
    } catch {
        fatalError("Could not create ModelContainer: \(error)")
    }
}()

@main
struct EduAppApp: App {
    @State private var dataLoaded = false
    
    var body: some Scene {
        WindowGroup {
            if !dataLoaded {
                            LoadingView()
                                .onAppear {
                                    // Simulate data loading for 2 seconds
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                                        // Once data is loaded, set dataLoaded to true
                                        dataLoaded = true
                                    }
                                }
                        } else {
                            HomeView()
                                .modelContainer(sharedModelContainer)
                        }
        }
        .modelContainer(sharedModelContainer)
    }
}

#Preview{
    HomeView().modelContainer(sharedModelContainer)
}
