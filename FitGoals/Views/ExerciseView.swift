//
//  ExerciseView.swift
//  FitGoals
//
//  Created by Nikos Aggelidis on 17/4/23.
//

import SwiftUI
import AVKit

struct ExerciseView: View {
    @State private var rating = 0
    @Binding var selectedTab: Int
    let index: Int
    let interval: TimeInterval = 30
    
    var lastExercise: Bool {
        index + 1 == Exercise.exercises.count
    }
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HeaderView(selectedTab: $selectedTab, titleText: Exercise.exercises[index].exerciseName)
                    .padding(.bottom)
                VideoPlayerView(fileName: Exercise.exercises[index].videoName, height: geometry.size.height * 0.45)
                DateView(interval: interval)
                HStack(spacing: 150) {
                    Button("Start Exercise") { }
                    Button("Done") {
                        selectedTab = lastExercise ? 9 : selectedTab + 1
                    }
                }
                .font(.title3)
                .padding()
                RatingView(rating: $rating)
                    .padding()
                HistoryButtonView()
            }
        }
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView(selectedTab: .constant(1), index: 1)
    }
}
