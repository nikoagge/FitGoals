//
//  ExerciseView.swift
//  FitGoals
//
//  Created by Nikos Aggelidis on 17/4/23.
//

import SwiftUI
import AVKit

struct ExerciseView: View {
    let videoNames = ["squat", "step-up", "burpee", "sun-salute"]
    let exerciseNames = ["Squat", "Step Up", "Burpee", "Sun Salute"]
    let index: Int
    let interval: TimeInterval = 30
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HeaderView(titleText: exerciseNames[index])
                    .padding(.bottom)
                VideoPlayerView(fileName: videoNames[index], height: geometry.size.height * 0.45)
                DateView(interval: interval)
                StartOrDoneButtonView()
                RatingView()
                    .padding()
                HistoryButtonView()
            }
        }
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView(index: 0)
    }
}
