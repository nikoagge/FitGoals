//
//  RatingView.swift
//  FitGoals
//
//  Created by Nikos Aggelidis on 17/4/23.
//

import SwiftUI

struct RatingView: View {
    @State private var rating = 0
    
    @AppStorage("ratings") private var ratings = "4000"

    let maximumRating = 5
    
    let onColor = Color.red
    let offColor = Color.gray
    
    let exerciseIndex: Int
    
    var body: some View {
        HStack {
            ForEach(1 ..< maximumRating + 1, id: \.self) { index in
                Image(systemName: "waveform.path.ecg")
                    .foregroundColor( index > rating ? offColor : onColor)
                    .onTapGesture {
                        updateRating(index: index)
                    }
                    .onAppear {
                        let index = ratings.index(
                            ratings.startIndex,
                            offsetBy: exerciseIndex
                        )
                        let character = ratings[index]
                        rating = character.wholeNumberValue ?? 0
                    }
            }
        }
        .font(.largeTitle)
    }
    
    func updateRating(index: Int) {
        rating = index
        let index = ratings.index(
            ratings.startIndex,
            offsetBy: exerciseIndex
        )
        ratings.replaceSubrange(index...index, with: String(rating))
    }
}

struct RatingView_Previews: PreviewProvider {
    @AppStorage("ratings") static var ratings: String?
    static var previews: some View {
        ratings = nil

        return RatingView(exerciseIndex: 0)
            .previewLayout(.sizeThatFits)
    }
}
