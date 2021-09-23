//
//  homeVcClass.swift
//  login_page_8
//
//  Created by Robin George on 09/09/21.
//

import UIKit

class homeVcClass: UIViewController { //TODO: USE CAPITAL LETTER FOR CLASS NAME

    @IBOutlet weak var logoutBtn: UIButton!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var refreshBtn: UIButton!
    var random  = 2 //TODO: USE PROPER NAME FOR VARIABLE USE CASE. HERE YOU CAN USE "stepperCount or incrementCount" BCZ IT'S NOT A RANDOM NUMBER.
    override func viewDidLoad() {
       
        super.viewDidLoad()
      
        logoutBtn.layer.cornerRadius = 15
        imageView.image = #imageLiteral(resourceName: "pexels-lisa-1161547")
        refreshBtn.layer.cornerRadius = 15
        refreshBtn.layer.masksToBounds = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func logoutBtn(_ sender: Any) {
        
        UserDefaults.standard.set(false, forKey: "loggedIn")
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func refreshBtn(_ sender: Any) {
        
        if random != 9 {
            imageView.image = [#imageLiteral(resourceName: "pexels-lisa-1161547"),#imageLiteral(resourceName: "pexels-george-lebada-567540"),#imageLiteral(resourceName: "pexels-pixabay-534124"),#imageLiteral(resourceName: "pexels-chevanon-photography-325044"),#imageLiteral(resourceName: "pexels-adonyi-gÃ¡bor-1400136"),#imageLiteral(resourceName: "pexels-tranmautritam-251225"),#imageLiteral(resourceName: "wp9455025-audi-r8-black-wallpapers"),#imageLiteral(resourceName: "why-kei-8e2gal_GIE8-unsplash"),#imageLiteral(resourceName: "pexels-ylanite-koppens-776656"),#imageLiteral(resourceName: "pexels-christina-morillo-1181298")][random]
            random = random+1
        }
        else {
            random = 0
        }
            
            
            
      
        
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
