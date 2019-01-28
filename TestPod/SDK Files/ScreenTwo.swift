//
//  ScreenTwo.swift
//  TestPod
//
//  Created by Vikranth Kumar on 28/01/19.
//  Copyright © 2019 Vikranth Kumar. All rights reserved.
//

import UIKit

class ScreenTwo: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
