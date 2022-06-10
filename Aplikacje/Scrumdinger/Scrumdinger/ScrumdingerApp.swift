//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Szymon Maćkowiak on 07/06/2022.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
