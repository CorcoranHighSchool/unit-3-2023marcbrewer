//
//  SecondViewController.swift
//  LifeCycle
//
//  Created by 2023marcbrewer on 3/27/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("SecondViewController - ViewDidLoad")
    }
    override func viewWillAppear(_ animated: Bool){
        super.viewWillAppear(animated)
        print("SecondViewController - View Will Appear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("SecondViewController - view Did Disappear")
    }
}
