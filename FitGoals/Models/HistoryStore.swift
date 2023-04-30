//
//  HistoryStore.swift
//  FitGoals
//
//  Created by Nikos Aggelidis on 23/4/23.
//

import Foundation

class HistoryStore: ObservableObject {
    @Published var exerciseDays: [ExerciseDay] = []
    
    init() {
        #if DEBUG
        createMockData()
        #endif
    }
    
    func addCompletedExercise(for exerciseName: String) {
        let today = Date()
        if today.isSameDay(as: exerciseDays[0].date) {
            debugPrint("Adding \(exerciseName)")
            exerciseDays[0].exercises.append(exerciseName)
        } else {
            exerciseDays.insert(
                ExerciseDay(
                    date: today,
                    exercises: [exerciseName]
                ),
                at: 0
            )
        }
    }
}
