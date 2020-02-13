//
//  ListOfQuestions.swift
//  i2020_02_04
//
//  Created by Bradford, Phillip on 2/4/20.
//  Copyright © 2020 Bradford, Phillip. All rights reserved.
//

import Foundation

public class ListOfQuestions {
    
    private var correctAnswers: Int = 0
    private var totalQuestionsAsked: Int = 0
    private var currentQuestionNumber: Int = 0
    
    public let allQs = [
        Question(statement: "Alaska is in South America", isTrue: false),
        Question(statement: "Central America is a continent", isTrue: false),
        Question(statement: "Asia is the largest continent", isTrue: true),
        Question(statement: "Greece borders the Mediterranean sea", isTrue: true)

    ]
             
    public let Hints = [
        Hint(statement: "Alaska is a part of the USA"),
        Hint(statement: "There are seven continents in the world"),
        Hint(statement: "Asia has 48 Countries"),
        Hint(statement: "Greece borders Albania, Bulgaria and Turkey"),
    ]
    
    public func correctAnswer() -> Void {
        correctAnswers = correctAnswers + 1
        totalQuestionsAsked = totalQuestionsAsked + 1
    }
    
    public func inCorrectAnswer() -> Void {
        totalQuestionsAsked = totalQuestionsAsked + 1
    }
    
    public func totAns() -> Int{
        return correctAnswers
    }
    
    public func currQuestion() -> Int{
        
            return currentQuestionNumber
    }
    
    public func nextQuestionNumber() -> Int {
        
        currentQuestionNumber = (currentQuestionNumber + 1) % allQs.count
        return currentQuestionNumber
    }

}
