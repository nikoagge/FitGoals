//
//  ExerciseDay.swift
//  FitGoals
//
//  Created by Nikos Aggelidis on 23/4/23.
//

import Foundation

struct ExerciseDay: Identifiable {
    let id = UUID()
    let date: Date
    var exercises: [String] = []
}
