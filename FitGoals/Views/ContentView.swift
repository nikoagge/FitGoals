//
//  ContentView.swift
//  FitGoals
//
//  Created by Nikos Aggelidis on 17/4/23.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
      TabView {
          WelcomeView()
          ForEach(0 ..< 4) { index in
              ExerciseView(index: 0)
          }
      }
      .tabViewStyle(PageTabViewStyle())
      .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
