//
//  VerificationViewController.swift
//  SchoolProject
//
//  Created by Мухтар on 18.02.2018.
//  Copyright © 2018 SDU. All rights reserved.
//

import UIKit
import FirebaseAuth

class VerificationViewController: UIViewController {
    @IBOutlet weak var code: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func verifcitaionButton(_ sender: Any) {
        let defaults = UserDefaults.standard
        let credential: PhoneAuthProvider = PhoneAuthProvider.provider().credential(withVerificationID: defaults.string(For), verificationCode: <#T##String#>)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
