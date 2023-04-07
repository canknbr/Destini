//
//  ViewController.swift
//  Destini
//
//  Created by Can Kanbur on 7.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var choiceTwo: UIButton!
    @IBOutlet weak var choiceOne: UIButton!
    @IBOutlet weak var storyLabel: UILabel!
    
    var storyBrain = StoryBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
updateUI()
    }

    @IBAction func choiceClicked(_ sender: UIButton) {
        var userChoice = sender.currentTitle!
        storyBrain.getNextStory(userChoice)
        updateUI()
    }
    
    
    func updateUI(){
        storyLabel.text = storyBrain.getStoryTitle()
        choiceOne.setTitle(storyBrain.getChoiceOne(), for: UIControl.State.normal)
        choiceTwo.setTitle(storyBrain.getChoiceTwo(), for: UIControl.State.normal)
    }
    
}

