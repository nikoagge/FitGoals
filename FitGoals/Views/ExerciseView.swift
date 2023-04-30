//
//  ExerciseView.swift
//  FitGoals
//
//  Created by Nikos Aggelidis on 17/4/23.
//

import SwiftUI
import AVKit

struct ExerciseView: View {
    @State private var showHistory = false
    @State private var showSuccess = false
    @State private var isTimerDone = false
    @State private var showTimer = false

    @Binding var selectedTab: Int
    
    @EnvironmentObject var history: HistoryStore
    
    @AppStorage("rating") private var rating = 0
    
    let index: Int
    
    var lastExercise: Bool {
        index + 1 == Exercise.exercises.count
    }
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HeaderView(selectedTab: $selectedTab, titleText: Exercise.exercises[index].exerciseName)
                    .padding(.bottom)
                VideoPlayerView(fileName: Exercise.exercises[index].videoName, height: geometry.size.height * 0.45)
                HStack(spacing: 150) {
                    Button("Start Exercise") {
                        showTimer.toggle()
                    }
                    Button("Done") {
                        history.addCompletedExercise(
                            for:
                                Exercise.exercises[index].exerciseName
                        )
                        isTimerDone = false
                        showTimer.toggle()
                        
                        if lastExercise {
                            showSuccess.toggle()
                        } else {
                            selectedTab += 1
                        }
                    }
                    .disabled(!isTimerDone)
                    .sheet(isPresented: $showSuccess) {
                        SuccessView(selectedTab: $selectedTab)
                    }
                }
                .font(.title3)
                .padding()
                if showTimer {
                    TimerView(isTimerDone: $isTimerDone)
                }
                Spacer()
                RatingView(rating: $rating)
                    .padding()
                Button("History") {
                  showHistory.toggle()
                }
                .sheet(isPresented: $showHistory) {
                  HistoryView(showHistory: $showHistory)
                }
                .padding(.bottom)
            }
        }
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView(selectedTab: .constant(0), index: 0)
            .environmentObject(HistoryStore())
    }
}
