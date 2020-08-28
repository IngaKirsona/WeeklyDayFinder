//
//  InfoViewController.swift
//  WeeklyDayFinder
//
//  Created by Inga Kirsona on 27/08/2020.
//  Copyright © 2020 Inga Kirsona. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    

    @IBOutlet weak var appDescLabel: UILabel!
    @IBOutlet weak var appInfoLabel: UILabel!
    
    var infoText = String()
    let appDescText = "This app is a homework project.\n Which day of the day is your day?\nCheck Dark/Light Mode."
    
    override func viewDidLoad() {
        super.viewDidLoad()
        appDescLabel.text = appDescText
        
        if !infoText.isEmpty{
            appInfoLabel.text = infoText
        }
    }
    

    @IBAction func closeButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        print("dismiss View Controller")
    }
    
}
