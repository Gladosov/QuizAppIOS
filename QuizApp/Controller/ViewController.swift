//
//  ViewController.swift
//  FunWithFlags
//
//  Created by Victor on 2017-12-16.
//  Copyright © 2017 Victor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionCounter: UILabel!
    @IBOutlet weak var progressView: UIView!
    @IBOutlet weak var questionLabel: UILabel!
    
    //Outlet for Buttons
    @IBOutlet weak var optionA: UIButton!
    @IBOutlet weak var optionB: UIButton!
    @IBOutlet weak var optionC: UIButton!
    @IBOutlet weak var optionD: UIButton!
    
    let allQuestions = QuestionBank()
    var questionNumber: Int = 0
    var score: Int = 0
    var selectedAnswer: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestion()
        updateUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   @IBAction func answerPressed(_ sender: UIButton) {
        if sender.tag == selectedAnswer {
            ProgressHUD.showSuccess("Верно")
            score += 1
            
        }else{
            ProgressHUD.showError("Неверно")
            
            
        }
  
        questionNumber += 1
        updateQuestion()
     
    }
    
    func updateQuestion(){
        
        if questionNumber <= allQuestions.list.count - 1{
            questionLabel.text = allQuestions.list[questionNumber].question
            optionA.setTitle(allQuestions.list[questionNumber].optionA, for: UIControlState.normal)
            optionB.setTitle(allQuestions.list[questionNumber].optionB, for: UIControlState.normal)
            optionC.setTitle(allQuestions.list[questionNumber].optionC, for: UIControlState.normal)
            optionD.setTitle(allQuestions.list[questionNumber].optionD, for: UIControlState.normal)
            selectedAnswer = allQuestions.list[questionNumber].correctAnswer
            updateUI()
            
        }else {
            let alert = UIAlertController(title: "Поздравляю!", message: "Тест закончен! Желаете попробывать заново?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Начать заново!", style: .default, handler: {action in self.restartQuiz()})
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
         updateUI()
        
    }
    
    func updateUI(){
        questionCounter.text = "\(questionNumber+1)/\(allQuestions.list.count)";
        	
        
    }
    
    func restartQuiz(){
        score = 0
        questionNumber = 0
        updateQuestion()
        
    }
    


}

