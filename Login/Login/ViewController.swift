//
//  ViewController.swift
//  Login
//
//  Created by 2023marcbrewer on 3/22/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var forgotUsername: UIButton!
    
    @IBOutlet weak var forgotPassword: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else { return }
        
        if sender == forgotUsername {
            segue.destination.title = "forgotUsername"
        }  else if sender == forgotPassword {
                    segue.destination.title = "forgotPassword"
            } else {
                segue.destination.navigationItem.title = usernameTextField.text
            }
        }
    
    
    @IBAction func forgotUsername(_ sender: UIButton) {
        performSegue(withIdentifier: "forgotUsernameOrPassword", sender: forgotUsername)
    }
    
    @IBAction func forgotPassword(_ sender: UIButton) {
        performSegue(withIdentifier: "forgotUsernameOrPassword", sender: forgotPassword)
    }
    
    
}

