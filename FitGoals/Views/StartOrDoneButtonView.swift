//
//  StartOrDoneButtonView.swift
//  FitGoals
//
//  Created by Nikos Aggelidis on 19/4/23.
//

import SwiftUI

struct StartOrDoneButtonView: View {
    var body: some View {
        HStack(spacing: 150) {
            Button("Start Exercise") { }
            Button("Done") { }
        }
        .font(.title3)
        .padding()
    }
}

struct StartOrDoneButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartOrDoneButtonView()
    }
}
