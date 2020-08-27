//
//  AppearenceViewController.swift
//  WeeklyDayFinder
//
//  Created by Inga Kirsona on 27/08/2020.
//  Copyright © 2020 Inga Kirsona. All rights reserved.
//

import UIKit

class AppearenceViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func openSettingsTapped(_ sender: Any) {
        guard let SettingsURL = URL(string: UIApplication.openSettingsURLString) else{
            return
        }
        if UIApplication.shared.canOpenURL(SettingsURL){
            UIApplication.shared.open(SettingsURL, options: [:]) {(success) in
            print(success)
            }
        }
    }
    func setLabelText(){
        var text = "Unable to specify UI style"
        if self.traitCollection.userInterfaceStyle == .dark {
            text = "Dark Mode is On. \nGo to settings if you would like \n to change to Light Mode."
        }else{
            text = "Light Mode is On. \nGo to settings if you would like \n to change to Dark Mode."
        }
        textLabel.text = text
    }
}

extension AppearenceViewController {
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        setLabelText()
    }
}
