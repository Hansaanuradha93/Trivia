//
//  ViewController.swift
//  Trivia
//
//  Created by Hansa Anuradha on 2/13/19.
//  Copyright © 2019 Hansa Anuradha. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    // MARK: - Properties
    var questionBank = QuestionBank()

    // MARK: - IBOutlets
    
    @IBOutlet weak var currentGamePointLabel: UILabel!
    @IBOutlet weak var questionImageView: UIImageView!
    @IBOutlet weak var questionTextLabel: UILabel!
    @IBOutlet weak var falseButton: UIButton!
    // MARK: - View Controller methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Lets disable the False button at the start of the game
        falseButton.isEnabled = false
    }
    
    // MARK: - IBActions
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        if sender.tag == 0 { // True Button
            
            if currentGamePointLabel.text == "--" {
                // Lets enable the False button when True button is pressed
                falseButton.isEnabled = true
            } else {
                // Lets increase the game point by 1
                questionBank.gamePoint += 1
            }
            
        } else if sender.tag == 1 { // False Button
            // Lets decrease the game point by 1
            questionBank.gamePoint -= 1
        }
        
        // Lets update UI here
        updateUI()
    }
    
    // MARK: - Support Functions
    
    func updateUI() {
        questionTextLabel.text = questionBank.getNextQuestion()
        questionImageView.image = UIImage(named: questionBank.getNextImageName())
        currentGamePointLabel.text = "\(questionBank.gamePoint)"
    }
    

}

