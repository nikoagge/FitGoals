//
//  HistoryView.swift
//  FitGoals
//
//  Created by Nikos Aggelidis on 19/4/23.
//

import SwiftUI

struct HistoryView: View {
    let historyStore = HistoryStore()

    var body: some View {
        ZStack(alignment: .topTrailing) {
            Button(action: {}) {
                Image(systemName: "xmark.circle")
            }
            .font(.title)
            .padding(.trailing)
            
            VStack {
                Text("History")
                    .font(.title)
                    .padding()
                Form {
                    ForEach(historyStore.exerciseDays) { exerciseDay in
                        Section(
                            header: Text(exerciseDay.date.formatted(as: "MMM d"))
                                .font(.headline)
                        ) {
                            ForEach(exerciseDay.exercises, id: \.self) { exercise in
                                Text(exercise)
                            }
                        }
                    }
                }
            }
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
