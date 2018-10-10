//
//  ViewController.swift
//  Commision
//
//  Created by Ian Lee on 10/8/18.
//  Copyright © 2018 John Hersey High School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalPayLabel: UITextField!
    @IBOutlet weak var commissionPayTextField: UILabel!
    let basePay:Int = 500
    
    
    override func viewDidLoad() {
       super.viewDidLoad()
    }
    
    @IBAction func calculateOnTapped(_ sender: UIButton) {
        let comPay = getInput()
        let totalPay = comPay + Double(basePay)
        totalPayLabel.text = "Total Pay = $\(totalPay)"
    }
    
    func getInput() -> Double {
        if let data = commissionPayTextField.text, let commissionPay = Double(data){
            return commissionPay
        } else {
            return 0
        }
    }
    

}

