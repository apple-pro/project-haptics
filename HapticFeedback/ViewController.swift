//
//  ViewController.swift
//  HapticFeedback
//
//  Created by StartupBuilder.INFO on 9/6/20.
//  Copyright © 2020 StartupBuilder.INFO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var impact: UIImpactFeedbackGenerator?
    var selection: UISelectionFeedbackGenerator?
    var notification: UINotificationFeedbackGenerator?
    
    
    @IBAction func start(_ sender: UIButton) {
        if let title = sender.titleLabel?.text {
            switch title {
            case "Impact":
                impact = UIImpactFeedbackGenerator()
                impact?.prepare()
            case "Selection":
                selection = UISelectionFeedbackGenerator()
                selection?.prepare()
            default:
                notification = UINotificationFeedbackGenerator()
                notification?.prepare()
            }
        }
    }
    
    @IBAction func end(_ sender: UIButton) {
        print("I:\(impact) S:\(selection) N:\(notification)")
        
        impact?.impactOccurred()
        selection?.selectionChanged()
        
        if let title = sender.titleLabel?.text {
            switch title {
            case "Error":
                notification?.notificationOccurred(.error)
            case "Warning":
                notification?.notificationOccurred(.error)
            case "Success":
                notification?.notificationOccurred(.success)
                
            default:
                return
            }
        }
        
        clear()
        
    }
    
    func clear() {
        impact = nil
        selection = nil
        notification = nil
    }
}

