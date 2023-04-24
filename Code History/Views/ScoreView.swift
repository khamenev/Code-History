//
//  ScoreView.swift
//  Code History
//
//  Created by Sergey Khamenev on 18/04/2023.
//

import SwiftUI

struct ScoreView: View {
    let viewModel: ScoreViewModel
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Spacer()
                Text("Final Score:").font(.body)
                Text("\(viewModel.percentage)%")
                        .font(.system(size: 50))
                        .bold()
                        .padding()

                VStack {
                    Text("\(viewModel.correctGuesses) ✅")
                    Text("\(viewModel.incorrectGuesses) ❌")
                      }.font(.system(size: 30))
                Spacer()
                NavigationLink(
                        destination: ContentView(),
                        label: {
                          BottomTextView(str: "Re-take Quiz")
                        })
            }
        }
        .foregroundColor(.white)
        .navigationBarHidden(true)
    }
}

struct ScoreView_Previews: PreviewProvider {
  static var previews: some View {
    ScoreView(viewModel: ScoreViewModel(correctGuesses: 8, incorrectGuesses: 2))
  }
}
