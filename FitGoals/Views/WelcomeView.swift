//
//  WelcomeView.swift
//  FitGoals
//
//  Created by Nikos Aggelidis on 17/4/23.
//

import SwiftUI

struct WelcomeView: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            VStack {
                HeaderView(selectedTab: $selectedTab, titleText: NSLocalizedString("Welcome", comment: "greeting"))
                Spacer()
                Button(NSLocalizedString("History", comment: "view user activity")) {}
                    .padding(.bottom)
            }
            
            VStack {
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading) {
                        Text(NSLocalizedString("Get Fit", comment: "invitation to exercise"))
                            .font(.largeTitle)
                        Text("with high intensity interval training")
                            .font(.headline)
                    }
                    Image("step-up")
                        .resizedToFill(width: 240, height: 240)
                        .clipShape(Circle())
                }
                Button(action: { selectedTab = 0 }) {
                    Text(NSLocalizedString("Get Started", comment: "invitation"))
                    Image(systemName: "arrow.right.circle")
                    //Another way to write above code
//                    Label("Get Started", systemImage: "arrow.right.circle")
                }
                .font(.title2)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.gray, lineWidth: 2)
                )
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView(selectedTab: .constant(9))
    }
}
