//
//  Question.swift
//  MyQuiz
//
//  Created by Cristian To-ong on 13/01/2019.
//  Copyright © 2019 Cristian To-ong. All rights reserved.
//

import Foundation

class Question {
    
    var question : String = ""
    var answers : [String] = []
    var tag : Int = 0
    
    init(text: String, correctAnswer: [String], tagAnswer: Int) {
        question = text
        answers = correctAnswer
        tag = tagAnswer
    }
    
}

