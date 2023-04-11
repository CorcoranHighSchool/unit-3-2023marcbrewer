//
//  MiddleViewController.swift
//  OrderOfEvents
//
//  Created by 2023marcbrewer on 3/23/23.
//

import UIKit

class MiddleViewController: UIViewController {

    
    @IBOutlet weak var MiddleViewControllerLabel: UILabel!
    
    var eventNumber : Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let actualText = MiddleViewControllerLabel.text {
            MiddleViewControllerLabel.text = "\(actualText)\nEvent number \(eventNumber)"
        eventNumber += 1
        }
    }
    
}
    
