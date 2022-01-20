//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Gonzalo Olvera Monroy on 18/01/2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit
import CLTypingLabel


class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = ""
        var charIndex = 0.0
        let titleText = K.appName
        
        for letter in titleText {
            
            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { timer in
                self.titleLabel.text?.append(letter)
            }
            
            charIndex += 1
            
        }
        
    }
    
    
}
