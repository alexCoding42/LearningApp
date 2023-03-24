//
//  LearningAppApp.swift
//  LearningApp
//
//  Created by Alexandre Cisse on 24/03/2023.
//

import SwiftUI

@main
struct LearningApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ContentModel())
        }
    }
}
