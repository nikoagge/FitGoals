//
//  TimerView.swift
//  FitGoals
//
//  Created by Nikos Aggelidis on 30/4/23.
//

import SwiftUI

struct TimerView: View {
    @State private var timeRemaining = 4
    @Binding var isTimerDone: Bool
    
    let timer = Timer.publish(
        every: 1,
        on: .main,
        in: .common)
        .autoconnect()
    
    var body: some View {
        Text("\(timeRemaining)")
            .font(.system(size: 90, design: .rounded))
            .padding()
            .onReceive(timer) { _ in
                if self.timeRemaining > 0 {
                    self.timeRemaining -= 1
                } else {
                    isTimerDone = true
                }
            }
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView(isTimerDone: .constant(false))
            .previewLayout(.sizeThatFits)
    }
}
