//
//  ViewController.swift
//  TemperatureCalculator
//
//  Created by Jisa Gigi on 10/15/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var enterLabel: UILabel!
    @IBOutlet weak var segCtrl: UISegmentedControl!
    
    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func calculate(_ sender: Any) {
        self.resignFirstResponder()
        if segCtrl.selectedSegmentIndex == 0{
            let farenheit = Double(textField.text!)
            let celsius = (farenheit! - 32)/1.8
            outputLabel.text = String(format: "%4.2f Celsius", celsius)
            print("HERE")
            if celsius > 120 {
                imageView.image = UIImage(named: "Temp9")
            }else if celsius > 100 {
                imageView.image = UIImage(named: "Temp8")

            }else if celsius > 90 {
                imageView.image = UIImage(named: "Temp7")

            }else if celsius > 80 {
                imageView.image = UIImage(named: "Temp6")

            }else if celsius > 70 {
                imageView.image = UIImage(named: "Temp5")

            }else if celsius > 60 {
                imageView.image = UIImage(named: "Temp4")

            }else if celsius > 40 {
                imageView.image = UIImage(named: "Temp3")

            }else if celsius > 20 {
                imageView.image = UIImage(named: "Temp2")

            }
            else if celsius < -20 {
                imageView.image = UIImage(named: "Temp1")

            }
            
        }
        if segCtrl.selectedSegmentIndex == 1{
            let celsius = Double(textField.text!)
            let farenheit = (celsius! * 1.8) + 32
            outputLabel.text = String(format: "%4.2f", farenheit)
            if farenheit > 120 {
                imageView.image = UIImage(named: "Temp9")
            }else if farenheit > 160 {
                imageView.image = UIImage(named: "Temp8")

            }else if farenheit > 140 {
                imageView.image = UIImage(named: "Temp7")

            }else if farenheit > 100 {
                imageView.image = UIImage(named: "Temp6")

            }else if farenheit > 80 {
                imageView.image = UIImage(named: "Temp5")

            }else if farenheit > 60 {
                imageView.image = UIImage(named: "Temp4")

            }else if farenheit > 40 {
                imageView.image = UIImage(named: "Temp3")

            }else if farenheit > 20 {
                imageView.image = UIImage(named: "Temp2")

            }
            else if farenheit < 20 {
                imageView.image = UIImage(named: "Temp1")

            }
            
            
            
        }
    
    }
    
    @IBAction func formatCalculation(_ sender: Any) {
        if segCtrl.selectedSegmentIndex == 0 {
            enterLabel.text = "Enter Farenheit"
            textField.text = ""
            outputLabel.text = "0 Celsius"
        }
        if segCtrl.selectedSegmentIndex == 1{
            enterLabel.text = "Enter Celsius"
            textField.text = ""
            outputLabel.text = "0 Farenheit"
        }
    }
    
}

