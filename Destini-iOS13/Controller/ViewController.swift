//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()//soru getirme fonksiyonu
    }
    //** Set title: başlığı ayarla
    //** Current title: mevcut başlık

    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(userChoice: sender.currentTitle!)//nextStory fonksiyonundaki userChoice seçilen butona eşittir
        updateUI()
    }
    func updateUI() {
        storyLabel.text = storyBrain.getStoryTitle()//labela soruyu yazmak için fonksiyonu çağır
        choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)//fonksiyon çağır
        choice2Button.setTitle(storyBrain.getChoice2(), for: .normal)
        
    }
    
}

