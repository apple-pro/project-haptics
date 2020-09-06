//
//  ViewController.swift
//  HapticFeedback
//
//  Created by StartupBuilder.INFO on 9/6/20.
//  Copyright © 2020 StartupBuilder.INFO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var feedback: UIImpactFeedbackGenerator?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func startButtonPush(_ sender: UIButton) {
        print("Start")
        feedback = UIImpactFeedbackGenerator()
        feedback?.prepare()
    }
    
    @IBAction func buttonPushed(_ sender: UIButton) {
        print("Pushed")
        feedback?.impactOccurred()
        feedback = nil
    }
    
}

