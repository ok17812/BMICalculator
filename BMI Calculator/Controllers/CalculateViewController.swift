//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Evan Chang on 8/17/20.
//  Copyright © 2020 Evan Chang. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    var calculatorBrain = CalculatorBrain()

    @IBOutlet weak var heightValue: UILabel!
    @IBOutlet weak var weightValue: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func heightSliderChange(_ sender: UISlider) {
        heightValue.text = "\(String(format: "%.2f", sender.value)) m"
    }
    
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
        weightValue.text = "\(String(format: "%.0f", sender.value)) kg"
        
    }
    @IBAction func calculateButton(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        calculatorBrain.calcuateBMI(height : height, weight: weight)
       
        performSegue(withIdentifier: "goToResult", sender: self)
        
//        let VC2 = ResultViewController()
//        VC2.BMIValue = String(format: "%0.2f", BMI)
//        self.present(VC2, animated: true, completion: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.BMIValue = calculatorBrain.getValue()
        }

    }

}
