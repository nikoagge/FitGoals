//
//  FitGoalsApp.swift
//  FitGoals
//
//  Created by Nikos Aggelidis on 17/4/23.
//

import SwiftUI

@main
struct FitGoalsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    debugPrint(FileManager.default.urls(
                        for: .documentDirectory,
                        in: .userDomainMask)
                    )
                }
        }
    }
}
