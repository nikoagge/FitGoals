//
//  HistoryStore.swift
//  FitGoals
//
//  Created by Nikos Aggelidis on 23/4/23.
//

import Foundation

struct HistoryStore {
    var exerciseDays: [ExerciseDay] = []
    
    init() {
        #if DEBUG
        createMockData()
        #endif
    }
}
