//
//  ViewController.swift
//  login_page_8
//
//  Created by Robin George on 09/09/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fldPass: UITextField!
    @IBOutlet weak var fldUserName: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var UserLabel: UILabel!
    @IBOutlet weak var passLbl: UILabel!
    override func viewDidLoad() {
        loginBtn.layer.cornerRadius = 10
        loginBtn.layer.masksToBounds = true
        initializeHideKeyboard()
        UserLabel.isHidden = true
        passLbl.isHidden = true
        
        super.viewDidLoad()
        
        
        if UserDefaults.standard.bool(forKey: "loggedIn") == true{
            let home = self.storyboard?.instantiateViewController(withIdentifier: "homeVcClass") as! homeVcClass
            
            self.navigationController?.pushViewController(home, animated: false)
        }
       
        // Do any additional setup after loading the view.
    }
   
    
    @IBAction func LoginBtn(_ sender: Any) {
        UserLabel.isHidden = true
        passLbl.isHidden = true
       
        
        if fldUserName.text == "robin" && fldPass.text ==  "123"{
            UserDefaults.standard.set(true, forKey: "loggedIn")
        let home = self.storyboard?.instantiateViewController(withIdentifier: "homeVcClass") as! homeVcClass
        
        self.navigationController?.pushViewController(home, animated: true)
    
    }
        else if fldUserName.text == "" || fldUserName.text != "robin"   {
            UserLabel.isHidden = false
            
        }
        else if fldPass.text ==  "" || fldPass.text != "123"{
            passLbl.isHidden = false
        }
    
    
    
}

}

extension ViewController {
    
    func initializeHideKeyboard(){
        //Declare a Tap Gesture Recognizer which will trigger our dismissMyKeyboard() function
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(
            target: self,
            action: #selector(dismissMyKeyboard))
        
        //Add this tap gesture recognizer to the parent view
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissMyKeyboard(){
        //endEditing causes the view (or one of its embedded text fields) to resign the first responder status.
        //In short- Dismiss the active keyboard.
        view.endEditing(true)
    }
}



