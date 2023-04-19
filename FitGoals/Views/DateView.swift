//
//  DateView.swift
//  FitGoals
//
//  Created by Nikos Aggelidis on 19/4/23.
//

import SwiftUI

struct DateView: View {
    let interval: Double
    
    var body: some View {
        Text(Date().addingTimeInterval(interval), style: .timer)
            .font(.system(size: 90))
    }
}

struct DateView_Previews: PreviewProvider {
    static var previews: some View {
        DateView(interval: 30)
    }
}
