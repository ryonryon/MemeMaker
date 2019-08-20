//
//  ViewController.swift
//  MemeMaker
//
//  Created by Ryo Togashi on 2019-08-19.
//  Copyright © 2019 Ryo Togashi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var topCaptionSegmentedControl: UISegmentedControl!
    @IBOutlet weak var bottomCaptionSegmentedControl: UISegmentedControl!
    @IBOutlet weak var topCaptionLabel: UILabel!
    @IBOutlet weak var bottomCaptionLabel: UILabel!
    
    let topChoices = [
        CaptionOption("🕶","You know what's cool"),
        CaptionOption("⚡️","You know what makes me mad"),
        CaptionOption("💕","You know what I love"),
    ]
    
    let bottomChoices = [
        CaptionOption("😺","Cats wearing hats"),
        CaptionOption("🐕","Dogs carrying legs"),
        CaptionOption("🐵","Monkeys being funky"),
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topCaptionSegmentedControl.removeAllSegments()
        
        for index in 0...2 {
            topCaptionSegmentedControl.insertSegment(withTitle: topChoices[index].emoji, at: index, animated: false)
        }
        
        bottomCaptionSegmentedControl.removeAllSegments()
        
        for index in 0...2 {
            bottomCaptionSegmentedControl.insertSegment(withTitle: bottomChoices[index].emoji, at: index, animated: false)
        }
    }
    
    @IBAction func tappedTopSegmentedControl(_ sender: UISegmentedControl) {
        
        topCaptionLabel.text = topChoices[sender.selectedSegmentIndex].caption
    }
    
    @IBAction func tappedBottomSegmentedControl(_ sender: UISegmentedControl) {
        bottomCaptionLabel.text = bottomChoices[sender.selectedSegmentIndex].caption
    }
}

