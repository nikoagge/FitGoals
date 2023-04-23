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
    
    enum ExerciseName: CustomStringConvertible {
        case squat, stepUp, burpee, sunSalute
        
        var description: String {
            switch self {
            case .squat:
                return NSLocalizedString("Squat", comment: "exercise")
                
            case .stepUp:
                return NSLocalizedString("Step Up", comment: "exercise")
                
            case .burpee:
                return NSLocalizedString("Burpee", comment: "exercise")
                
            case .sunSalute:
                return NSLocalizedString("Sun Salute", comment: "yoga stretch")
            }
        }
    }
    
    enum VideoName: CustomStringConvertible {
        case squat, burpee, stepUp, sunSalute
        
        var description: String {
            switch self {
            case .squat:
                return NSLocalizedString("squat", comment: "")
                
            case .burpee:
                return NSLocalizedString("burpee", comment: "")
                
            case .stepUp:
                return NSLocalizedString("step-up", comment: "")
                
            case .sunSalute:
                return NSLocalizedString("sun-salute", comment: "")
            }
        }
    }
}

extension Exercise {
    static let exercises = [
        Exercise(
            exerciseName: String(describing: ExerciseName.squat),
            videoName: String(describing: VideoName.squat)
        ),
        Exercise(
            exerciseName: String(describing: ExerciseName.stepUp),
            videoName: String(describing: VideoName.stepUp)
        ),
        Exercise(
            exerciseName: String(describing: ExerciseName.burpee),
            videoName: String(describing: VideoName.burpee)
        ),
        Exercise(
            exerciseName: String(describing: ExerciseName.sunSalute),
            videoName: String(describing: VideoName.sunSalute)
        )
    ]
}
