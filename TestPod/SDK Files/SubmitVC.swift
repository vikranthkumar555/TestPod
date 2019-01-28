//
//  SubmitVC.swift
//  TestPod
//
//  Created by Vikranth Kumar on 28/01/19.
//  Copyright © 2019 Vikranth Kumar. All rights reserved.
//

import UIKit

class SubmitVC: UIViewController {
    
    var call: ((_ str: String) -> Void)?
    var presentingVC: UIViewController?
    
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func submitBA(_ sender: Any) {
        self.call?((self.emailTF.text ?? "Empty Email") + (self.passwordTF.text ?? "Empty Password"))
        self.dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func submitjjBA(_ sender: Any) {
        if let vc = self.storyboard?.instantiateViewController(withIdentifier: "ScreenTwo") as? ScreenTwo {
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    
    
    open class func presentController(on viewController: UIViewController, bundle: Bundle, callBack: @escaping (_ str: String) -> Void) {
        let st = UIStoryboard(name: "sdk", bundle: bundle)
        if let controller = st.instantiateViewController(withIdentifier: "SubmitVC") as? SubmitVC {
            controller.presentingVC = viewController
            controller.call = callBack
            let navigationController = UINavigationController(rootViewController: controller)
            controller.presentingVC?.present(navigationController, animated: true, completion: nil)
        }
    }
    
}
