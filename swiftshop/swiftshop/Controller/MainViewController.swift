//
//  ViewController.swift
//  swiftshop
//
//  Created by Luke Nguyen on 10/22/17.
//  Copyright © 2017 Luke Nguyen. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var wagetxt: CurrTextField!
    @IBOutlet weak var itemtxt: CurrTextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hourLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainViewController.calculate), for: .touchUpInside)
        // Do any additional setup after loading the view, typically from a nib.
        
        wagetxt.inputAccessoryView = calcBtn
        itemtxt.inputAccessoryView = calcBtn
        
        resultLabel.isHidden = true
        hourLabel.isHidden = true
    }
    @objc func calculate(){
        if let wageupdate = wagetxt.text, let itemupdate = itemtxt.text {
            if let wage = Double(wageupdate), let price = Double(itemupdate) {
                view.endEditing(true)
                resultLabel.isHidden = false
                hourLabel.isHidden = false
                resultLabel.text = "\(Wage.gethours(forWage: wage, andPrice: price))"
            }
            
        }
    }

    @IBAction func clearCalcPressed(_ sender: Any) {
        resultLabel.isHidden = true
        hourLabel.isHidden = true
        wagetxt.text = ""
        itemtxt.text = ""
    }
    

}

