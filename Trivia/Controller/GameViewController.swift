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
    
    // MARK: - View Controller methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - IBActions
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        if sender.tag == 0 { // True Button
            print("True button tapped")
        } else if sender.tag == 1 { // False Button
            print("False button tapped")
        }
        
        // Lets update UI here
        questionTextLabel.text = questionBank.getNextQuestion()
        questionImageView.image = UIImage(named: questionBank.getNextImageName())
        
    }
    

}

