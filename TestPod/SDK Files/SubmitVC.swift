//
//  SubmitVC.swift
//  TestPod
//
//  Created by Vikranth Kumar on 28/01/19.
//  Copyright © 2019 Vikranth Kumar. All rights reserved.
//

import UIKit

class SubmitVC: UIViewController {

    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func submitBA(_ sender: Any) {
        let alertText = (self.emailTF.text ?? "Empty Email") + (self.passwordTF.text ?? "Empty Password")
    }
    
}
