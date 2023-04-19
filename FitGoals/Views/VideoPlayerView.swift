//
//  VideoPlayerView.swift
//  FitGoals
//
//  Created by Nikos Aggelidis on 19/4/23.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    let fileName: String
    let height: CGFloat
    
    var body: some View {
        if let url = Bundle.main.url(forResource: fileName, withExtension: "mp4") {
            VideoPlayer(player: AVPlayer(url: url))
                .frame(height: height)
        } else {
            Text("Couldn't find \(fileName).mp4")
                .foregroundColor(.red)
        }
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView(fileName: "testFile", height: 1.30)
    }
}
