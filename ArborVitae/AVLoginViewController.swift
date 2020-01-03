//
//  AVLoginViewController.swift
//  ArborVitae
//
//  Created by Anant Vijay on 23/12/19.
//  Copyright © 2019 Anant Vijay. All rights reserved.
//

import UIKit

class AVLoginViewController: UIViewController {

    @IBOutlet weak var appNameLabel: UILabel!
    @IBOutlet weak var welcomeNoteLabel: UILabel!
    @IBOutlet weak var emailIdTextField: UITextField!
    @IBOutlet weak var otpTextField: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var getOTPButton: UIButton!
    
    var hideKeyboardTapGetsture: UITapGestureRecognizer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hideKeyboardTapGetsture = UITapGestureRecognizer(target: self, action: #selector(hideKeybaordIfShown))
        self.view.addGestureRecognizer(hideKeyboardTapGetsture!)
        
        registerButton.layer.cornerRadius = registerButton.frame.width/10
        getOTPButton.layer.cornerRadius = getOTPButton.frame.width/8
        registerButton.isHidden = true
        otpTextField.isHidden = true
    }
    
    
    @objc func hideKeybaordIfShown() {
        self.emailIdTextField.resignFirstResponder()
        self.getOTPButton.resignFirstResponder()
    }

    @IBAction func registerButtonPressed(_ sender: Any) {
    }
    
    @IBAction func getOTPButtonPressed(_ sender: Any) {
        otpTextField.isHidden = false
        registerButton.isHidden = false
    }
    
}
