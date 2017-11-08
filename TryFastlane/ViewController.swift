//
//  ViewController.swift
//  TryFastlane
//
//  Created by Sergey Alyasev on 08/11/2017.
//  Copyright © 2017 Convergent Media Group. All rights reserved.
//

import UIKit
import Crashlytics

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        let button = UIButton(type: .roundedRect)
        button.frame = CGRect(x: 20, y: 50, width: 100, height: 30)
        button.setTitle("Crash", for: [])
        button.addTarget(self, action: #selector(self.crashButtonTapped(_:)), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @IBAction func crashButtonTapped(_ sender: AnyObject) {
        Crashlytics.sharedInstance().crash()
    }
}

