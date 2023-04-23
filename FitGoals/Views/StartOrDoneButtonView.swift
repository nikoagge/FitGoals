//
//  StartOrDoneButtonView.swift
//  FitGoals
//
//  Created by Nikos Aggelidis on 19/4/23.
//

import SwiftUI

struct StartOrDoneButtonView: View {
    var body: some View {
        Button(NSLocalizedString("Start/Done", comment: "begin exercise / mark as finished")) {}
            .font(.title)
            .padding()
    }
}

struct StartOrDoneButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartOrDoneButtonView()
    }
}
