//
//  CounterViewController.swift
//  week5-app
//
//  Created by Minsu Kim on 2021-10-13.
//

import UIKit

class CounterViewController: UIViewController {

    @IBOutlet weak var fullName: UITextField!
    @IBOutlet weak var hrlyWage: UITextField!
    @IBOutlet weak var hrlyWorked: UITextField!
    
    
    @IBOutlet weak var lblgrossIncome: UILabel!
    @IBOutlet weak var lblTax: UILabel!
    @IBOutlet weak var lblNetIncome: UILabel!
    @IBOutlet weak var lblWarning: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func btnGeneratorPressed(_ sender: Any){
        let name:String = fullName.text ?? "n/a"
        let hourlyWageEntered = hrlyWage.text ?? "n/a"
        let hoursWokredEntered = hrlyWorked.text ?? "n/a"
        
        if(name.isEmpty || hoursWokredEntered.isEmpty || hourlyWageEntered.isEmpty){
            lblWarning.text = "Please fill up Name, Wage and Wokring hour"
            return
        }
        
        guard let hourlyWage = Double(hoursWokredEntered) else {
            lblWarning.text = "Wage must be numberic"
            return
        }
        
        guard let hoursWorked = Double(hoursWokredEntered) else {
            lblWarning.text = "working hour must be numberic"
            return
        }
        
        guard let hourlyWage = Double(hoursWokredEntered), let hoursWorked = Double(hoursWokredEntered) else{
            
            lblWarning.text = "Both wage and working hour should be numberic"
            return
        }
        
        
        let grossIncome = hourlyWage * hoursWorked
        let taxableAmount = grossIncome * 0.15
        
        let netIncome = grossIncome - taxableAmount
        
        lblgrossIncome.text = "Gross Income: \(grossIncome)"
        lblTax.text = "Tax: \(taxableAmount)"
        lblNetIncome.text = "Net Income: \(netIncome)"
        //cmd + k to toggle keyboard
    }
    

}
