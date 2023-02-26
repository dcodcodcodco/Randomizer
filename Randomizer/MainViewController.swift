//
//  ViewController.swift
//  Randomizer
//
//  Created by Alex on 24.02.2023.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var minimumValueLabel: UILabel!
    @IBOutlet weak var maximumValueLabel: UILabel!
    @IBOutlet weak var randomValueLabel: UILabel!
    @IBOutlet weak var getRandomNumberButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getRandomNumberButton.layer.cornerRadius = 10
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.minimumValue = minimumValueLabel.text
        settingsVC.maximumValue = maximumValueLabel.text
    }

    @IBAction func getRandomNumberButtonTapped() {
        let minimumNumber = Int(String(minimumValueLabel.text ?? "")) ?? 0
        let maximumNumber = Int(String(maximumValueLabel.text ?? "")) ?? 100
        
        randomValueLabel.text = String(String(Int.random(in: minimumNumber...maximumNumber)))
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) { // чтобы значения из mainVC вернулись в settingsVC
        guard let settingsVC = segue.source as? SettingsViewController else { return }
        minimumValueLabel.text = settingsVC.minimumValueTF.text
        maximumValueLabel.text = settingsVC.maximumValueTF.text
        
        
    }
    
}

