//
//  QuestionBank.swift
//  MyQuiz
//
//  Created by Cristian To-ong on 13/01/2019.
//  Copyright © 2019 Cristian To-ong. All rights reserved.
//
//let answerArray = ["","","",""]

import Foundation

class QuestionBank {
    
    var list = [Question]()
    let answerArray1 = ["500 BC", "1000 BC" ,"1300 BC" ,"1500 BC"]
    let answerArray2 = ["1910","1914","1917","1920"]
    let answerArray3 = ["China and England","China and Russia","England and France","Russia and England"]
    let answerArray4 = ["England","Iran","Japan","Austria"]
    let answerArray5 = ["Thomas Jefferson","John Adams","Andrew Jackson","George Washington"]
    
    init() {
        
        
        list.append(Question(text: "Rome was founded in?", correctAnswer: answerArray1, tagAnswer: 2))
        list.append(Question(text: "The First World war began in which year ?", correctAnswer: answerArray2, tagAnswer: 2))
        list.append(Question(text: "The Opium war id held between which two countries ?", correctAnswer: answerArray3, tagAnswer: 1))
        list.append(Question(text: "The oldest dynasty still ruling in which country ?", correctAnswer: answerArray4, tagAnswer: 3))
        list.append(Question(text: "Who was the first President of USA ?", correctAnswer: answerArray5, tagAnswer: 4))
        
    
    }
    
}
