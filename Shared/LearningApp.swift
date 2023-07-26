//
//  LearningAppApp.swift
//  Shared
//
//  Created by Harrison Carroll on 26/07/2023.
//

import SwiftUI

@main
struct LearningApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView().environmentObject(ContentModel())
        }
    }
}
