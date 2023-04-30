//
//  SuccessView.swift
//  FitGoals
//
//  Created by Nikos Aggelidis on 22/4/23.
//

import SwiftUI

struct SuccessView: View {
    @Binding var selectedTab: Int
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            VStack {
                Image(systemName: "hand.raised.fill")
                    .renderingMode(.template)
                    .foregroundColor(Color.purple)
                    .frame(width: 75.0, height: 75.0)
                Text("High Five!")
                    .fontWeight(.black)
                Text("Good job completing all four exercises!\nRemember tomorrow's another day.\nSo eat well and get some rest.")
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.center)
            }
            VStack {
                Spacer()
                Button("Continue") {
                    selectedTab = 9
                    presentationMode.wrappedValue.dismiss()
                }
            }
        }
    }
}

struct SuccessView_Previews: PreviewProvider {
    static var previews: some View {
        SuccessView(selectedTab: .constant(3))
    }
}
