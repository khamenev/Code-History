//
//  ScoreViewModel.swift
//  Code History
//
//  Created by Sergey Khamenev on 18/04/2023.
//

import Foundation

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
      }
}
