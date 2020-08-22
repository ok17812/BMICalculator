//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Evan Chang on 8/22/20.
//  Copyright © 2020 Evan Chang. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var BMIValue: String?

    @IBOutlet weak var BMILabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        BMILabel.text = BMIValue
        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculateBurron(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    



}
