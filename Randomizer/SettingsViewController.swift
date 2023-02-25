//
//  SettingsViewController.swift
//  Randomizer
//
//  Created by Alex on 25.02.2023.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var minimumValueTF: UITextField!
    @IBOutlet weak var maximumValueTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func cancelAction() {
        dismiss(animated: true)
    }
}
