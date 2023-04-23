//
//  Exercise.swift
//  FitGoals
//
//  Created by Nikos Aggelidis on 22/4/23.
//

import Foundation

struct Exercise {
    let exerciseName: String
    let videoName: String
    
    enum ExerciseName: String {
        case squat = "Squat"
        case stepUp = "Step Up"
        case burpee = "Burpee"
        case sunSalute = "Sun Salute"
    }
    
    enum VideoName: String {
        case squat, burpee
        case stepUp = "step-up"
        case sunSalute = "sun-salute"
    }
}

extension Exercise {
    static let exercises = [
        Exercise(
            exerciseName: ExerciseName.squat.rawValue,
            videoName: VideoName.squat.rawValue
        ),
        Exercise(
            exerciseName: ExerciseName.stepUp.rawValue,
            videoName: VideoName.stepUp.rawValue
        ),
        Exercise(
            exerciseName: ExerciseName.burpee.rawValue,
            videoName: VideoName.burpee.rawValue
        ),
        Exercise(
            exerciseName: ExerciseName.sunSalute.rawValue,
            videoName: VideoName.sunSalute.rawValue
        )
    ]
}
