//
//  ViewController.swift
//  i2020_02_04
//
//  Created by Bradford, Phillip on 2/4/20.
//  Copyright © 2020 Bradford, Phillip. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {

    @IBOutlet weak var questionBox: UITextField!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var hintBox: UITextField!
    @IBOutlet weak var hintButton: UIButton!
    @IBOutlet weak var scoreBox: UITextField!
    
    let Qs =  ListOfQuestions()

   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        questionBox.text = Qs.allQs[0].statement
        hintBox.text = "Press the Hint Button for a Hint"
        scoreBox.text = "Your Score is 0"
        
    }
    
    @IBAction func nextSelected(_ sender: Any) {
        let n = Qs.nextQuestionNumber()
        
        questionBox.text = Qs.allQs[n].statement
        hintBox.text = "Press the Hint Button for a Hint"
    }
    
    
    @IBAction func hintSelected(_ sender: Any) {
        let n = Qs.currQuestion()
        hintBox.text = Qs.Hints[n].statement
    }
    
    @IBAction func trueSelected(_ sender: Any) {
        
        let d = Qs.currQuestion()
        
        if (Qs.allQs[(d)].isTrue == true){
            Qs.correctAnswer()
        } else {
            Qs.inCorrectAnswer()
        }
        let c = Qs.totAns()
        let n = Qs.nextQuestionNumber()
        questionBox.text = Qs.allQs[(n)].statement;
        hintBox.text = "Press the Hint Button for a Hint"
        scoreBox.text = "Your Score is \(c)"
    }
    
    @IBAction func falseSelected(_ sender: Any) {
        let d = Qs.currQuestion()
        
               if (Qs.allQs[(d)].isTrue == false){
                Qs.correctAnswer()
        } else {
            Qs.inCorrectAnswer()
        }
        let c = Qs.totAns()
        let n = Qs.nextQuestionNumber()
        questionBox.text = Qs.allQs[n].statement;
        hintBox.text = "Press the Hint Button for a Hint"
        scoreBox.text = "Your Score is \(c)"
               
           }
    


}
