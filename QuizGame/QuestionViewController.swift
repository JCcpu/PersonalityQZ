//
//  QuestionViewController.swift
//  QuizGame
//
//  Created by A.M. Class on 3/24/21.
//

import UIKit

class QuestionViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var questionOneStackView: UIStackView!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    
    
    @IBOutlet weak var questionTwoStackView: UIStackView!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    
    
    @IBOutlet weak var questionThreeStackView: UIStackView!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var button10: UIButton!
    @IBOutlet weak var button11: UIButton!
    @IBOutlet weak var button12: UIButton!
    
    @IBOutlet weak var questionProgressView: UIProgressView!
    
    var question: [Question] = [
        Question(text: "How do you spend your days?", type: .question1, answer: [
        Answer(text: "I spend the day having alone time", type: .cat),
        Answer(text: "I spend the day hanging out with friends", type: .rabbit),
        Answer(text: "I spend the day exploring the outdoors", type: .dog),
        Answer(text: "I spend the days in other ways", type: .bird)
        ]),
        Question(text: "Would you descibe yourself has", type: .question2, answer: [
            Answer(text: "Intelligent", type: .rabbit),
            Answer(text: "Playful", type: .dog),
            Answer(text: "Self Right", type: .cat),
            Answer(text: "Other", type: .bird)
        ]),
        Question(text: "What was your favorite game when you were a child?", type: .question3, answer: [
            Answer(text: "Playing sports", type: .dog),
            Answer(text: "Hide and seek", type: .cat),
            Answer(text: "Puzzle/board games", type: .bird),
            Answer(text: "Playing with friends", type: .rabbit)
        ])
    ]
    
    var questionIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()

        
    }
    
    func updateUI() {
        
        questionOneStackView.isHidden = true
        questionTwoStackView.isHidden = true
        questionThreeStackView.isHidden = true
        
        navigationItem.title = ("Question #\(questionIndex + 1)")
        
        let currentQuestion = question[questionIndex]
        let currentAnswer = currentQuestion.answer
        let totalProgress = Float(questionIndex) / Float(question.count)
        
        questionLabel.text = currentQuestion.text
        questionProgressView.setProgress(totalProgress, animated: true)
        
        switch currentQuestion.type {
        case.question1:
            updateQuestionOneStackView(using: currentAnswer)
        case.question2:
            questionTwoStackView.isHidden = false
            updateQuestionTwoStackView(using: currentAnswer)
        case.question3:
            questionThreeStackView.isHidden = false
            updateQuestionThreeStackView(using: currentAnswer)
            
        }
    }
    
    func updateQuestionOneStackView(using answers: [Answer]) {
        questionOneStackView.isHidden = false
        button1.setTitle(answers[0].text, for: .normal)
        button2.setTitle(answers[1].text, for: .normal)
        button3.setTitle(answers[2].text, for: .normal)
        button4.setTitle(answers[3].text, for: .normal)
    }
    
    func updateQuestionTwoStackView(using answers: [Answer]) {
        questionTwoStackView.isHidden = false
        button5.setTitle(answers[0].text, for: .normal)
        button6.setTitle(answers[1].text, for: .normal)
        button7.setTitle(answers[2].text, for: .normal)
        button8.setTitle(answers[3].text, for: .normal)
        
    }
    
    func updateQuestionThreeStackView(using answers: [Answer]) {
        questionThreeStackView.isHidden = false
        button9.setTitle(answers[0].text, for: .normal)
        button10.setTitle(answers[1].text, for: .normal)
        button11.setTitle(answers[2].text, for: .normal)
        button12.setTitle(answers[3].text, for: .normal)
    }
    
}
