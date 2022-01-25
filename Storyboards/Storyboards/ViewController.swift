//
//  ViewController.swift
//  Storyboards
//
//  Created by Omar Negron Montero on 1/24/22.
//

import UIKit

class ViewController: UIViewController {
    // IB - interface builder
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    // called when UI assets are ready to work with
    // but before they appear on the screen
    // can be referenced an manipulated
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        label.text = ""
    }
    
    // after objects appear
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // displays the keyboard and cursor
        textField.becomeFirstResponder()
    }

    @IBAction func buttonWasPressed(_ sender: Any) {
        let name = textField.text ?? ""
        
        // interpolation
        label.text = "Hi \(name)!"
        
        // dismiss the keyboard
        textField.resignFirstResponder()
    }
    
    // handle touches on the view
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        // dismiss keyboard when tapping away from the text field
        textField.resignFirstResponder()
    }
    
}

