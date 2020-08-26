//
//  ViewController.swift
//  WeeklyDayFinder
//
//  Created by Inga Kirsona on 25/08/2020.
//  Copyright © 2020 Inga Kirsona. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var dayTextField: UITextField!
    @IBOutlet weak var monthTextField: UITextField!
    @IBOutlet weak var yearTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
//keyboard to dissapear:
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
func handleCalculation(){
        let calendar = Calendar.current
        var dateComponent = DateComponents()
    
    
    guard let day = dayTextField.text, !day.isEmpty, Int(day) ?? 0 <= 31, let month = monthTextField.text, !month.isEmpty, Int(month) ?? 0 <= 12, let year = yearTextField.text, !year.isEmpty
            else {
            print ("textField error")
            self.resultLabel.text = "Input error!"
            return
        }
    
        dateComponent.day = Int(day)
        dateComponent.month = Int(month)
        dateComponent.year = Int(year)
    
        
    guard let date = calendar.date(from: dateComponent)
            else {
            print ("calendar.date error")
            self.resultLabel.text = "Input error!"
            return
        }
    
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_EN")
        dateFormatter.dateFormat = "EEEE"
            
        let weekday = dateFormatter.string(from: date)
        resultLabel.text = weekday
    }
    
@IBAction func findWeekDayTapped(_ sender: Any) {
        handleCalculation()
    }
   
}
    
