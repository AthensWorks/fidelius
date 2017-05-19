//
//  ViewController.swift
//  Fidelius
//
//  Created by benlachman on 05/18/2017.
//  Copyright (c) 2017 benlachman. All rights reserved.
//

import UIKit
import Fidelius

class ViewController: UIViewController {
    @IBOutlet weak var secretValueLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        secretValueLabel.text = Fidelius.secrets()["test_key"] as? String
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

