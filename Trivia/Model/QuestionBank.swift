//
//  QuestionBank.swift
//  Trivia
//
//  Created by Hansa Anuradha on 2/13/19.
//  Copyright © 2019 Hansa Anuradha. All rights reserved.
//

import Foundation

struct QuestionBank {
    
    private var currentQuestionIndex = 0
    
    var questions = [
        "What’s the name of this city in the United States with a bell in the near middle of the city?",
        "What is the name of the spaceship first landed on the moon?",
        "What does 'umbros' mean in Latin? Translate it into Sentinelese.",
        "What’s the first photo printed from a camera in the world?",
        "When was the first email ever sent in the world?",
        "… and what was that email about?"
    ]
    
    var imageNames = [
        "1",
        "2",
        "3",
        "4",
        "5",
        "6"
    ]
    
    mutating func getNextQuestion() -> String {
        if currentQuestionIndex == questions.count - 1 {
            currentQuestionIndex = 0
        } else {
            currentQuestionIndex += 1
        }
        return questions[currentQuestionIndex]
    }
    
    func getNextImageName() -> String {
        return imageNames[currentQuestionIndex]
    }
}
