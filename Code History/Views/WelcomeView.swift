//
//  WelcomeView.swift
//  Code History
//
//  Created by Sergey Khamenev on 13/04/2023.
//

import SwiftUI

struct WelcomeView: View {
    
    var body: some View {
            NavigationView {
                ZStack {
                    GameColor.main.ignoresSafeArea()
                        VStack {
                            Spacer()
                                VStack(alignment: .leading, spacing: 0) {
                                    Text("Select the correct answers to the follo   questions.")
                                        .font(.largeTitle)
                                        .bold()
                                        .multilineTextAlignment(.leading)
                                        .padding()
                                }
                                Spacer()
                            NavigationLink(
                                destination: ContentView(),
                                label: {
                                    BottomTextView(str: "Okay let's go!")
                                })
                        }
                        .foregroundColor(.white)
            }
        }
    }
}
struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}

