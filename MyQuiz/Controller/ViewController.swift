//
//  ViewController.swift
//  MyQuiz
//
//  Created by Cristian To-ong on 13/01/2019.
//  Copyright © 2019 Cristian To-ong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var allQuestions = QuestionBank()
    var questionNumber : Int = 0
    var score : Int = 0
    var pickedAnswer : Bool = false
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var choiceButtons: [UIButton]!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var progressBar: UIView!
    @IBOutlet weak var scoreLabel: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        updateUI()
        
    }


    @IBAction func answerPressed(_ sender: UIButton) {
        if sender.tag == allQuestions.list[questionNumber].tag {
            print("Correct")
            score += 1
            ProgressHUD.showSuccess("Correct!")
        } else {
            print("Wrong!!")
            ProgressHUD.showError("Wrong!")
        }
        
          questionNumber += 1
          nextQuestion()
    }
    
    
    func updateUI(){
        
        let choice1 = allQuestions.list[questionNumber].answers[0]
        let choice2 = allQuestions.list[questionNumber].answers[1]
        let choice3 = allQuestions.list[questionNumber].answers[2]
        let choice4 = allQuestions.list[questionNumber].answers[3]
        
        
        choiceButtons[0].setTitle(choice1, for: .normal)
        choiceButtons[1].setTitle(choice2, for: .normal)
        choiceButtons[2].setTitle(choice3, for: .normal)
        choiceButtons[3].setTitle(choice4, for: .normal)
        
        progressLabel.text = "\(questionNumber) / 10"
        scoreLabel.text = "Score: \(score)"
        
        progressBar.frame.size.width = (view.frame.size.width / 10) * CGFloat(questionNumber)
       
    }
    
    
    func nextQuestion() {
        
        if questionNumber < allQuestions.list.count {
            
          questionLabel.text = allQuestions.list[questionNumber].question
          updateUI()
        } else {
            
            let alert = UIAlertController(title: "Awesome!", message: "You got \(score) points out of 10, Do you want to startover?", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default) { (UIAlertAction) in
                self.startOver()
            }
            alert.addAction(restartAction)
            
            present(alert, animated: true, completion: nil)

        }
        
    }
    
    
    
    func startOver() {
        
        questionNumber = 0
        score = 0
        nextQuestion()
    }
    
}

