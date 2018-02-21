//
//  RegisterViewController.swift
//  SchoolProject
//
//  Created by Мухтар on 15.02.2018.
//  Copyright © 2018 SDU. All rights reserved.
//

import UIKit
import FirebaseAuth

class RegisterViewController: UIViewController {
    @IBOutlet weak var nubmerReg: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func registerButton(_ sender: Any) {
        let alert = UIAlertController(title: "Phone number", message: "Is this your phone number ? \n \(nubmerReg.text!)", preferredStyle: .alert)
        
        let action = UIAlertAction(title:"YES", style: .default) { (UIAlertAction) in
            PhoneAuthProvider.provider().verifyPhoneNumber(self.nubmerReg.text!) { (verificationID, error) in
                if error != nil {
                    print("error: \(String(describing: error?.localizedDescription))")
                }else{
                    let defaults = UserDefaults.standard
                    defaults.set(verificationID, forKey: "authVID")
                    self.performSegue(withIdentifier: "code", sender: Any?.self)
                    
                }
            }
            
        }
        
        let cancel = UIAlertAction(title: "NO", style: .cancel, handler: nil)
        alert.addAction(action)
        alert.addAction(cancel)
        self.present(alert,animated: true, completion: nil)
        
        
        
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
