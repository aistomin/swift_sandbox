//
//  ViewController.swift
//  FoodTracker
//
//  @author Andrei Istomin (andrej.istomin.ikeen@gmail.com)
//  @copyright © 2016 rising. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self
    }
    
    // MARK: UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        nameLabel.text = textField.text
    }
    
    // MARK: Actions
    @IBAction func setDefaultLabelText(sender: UIButton) {
        nameLabel.text = "Default Text"
    }
}
