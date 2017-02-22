//
//  ViewController.swift
//  QQConversation
//
//  Created by herry on 24/01/2017.
//  Copyright © 2017 herry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    // QQ promotion http://shang.qq.com
    
    @IBAction func segAction(_ sender: UISegmentedControl) {
        
        print("\(sender.selectedSegmentIndex)")
        
        let QQid = "1099779883"
        
        let urlPath = URL(string: "mqq://im/chat?chat_type=wpa&uin=\(QQid)&version=1&src_type=web")
        
        let QQGroup = "537476189"
        let urlGroup = URL(string: "mqq://im/chat?chat_type=group&uin=\(QQGroup)&version=1&src_type=web")
        
        
        if UIApplication.shared.canOpenURL(URL(string: "mqq://")!) {
            
            if sender.selectedSegmentIndex == 0 {
                
                UIApplication.shared.open(urlPath!, options: [:], completionHandler: {(sucess) in })
                
                
            }else{
                
                UIApplication.shared.open(urlGroup!, options: [:], completionHandler: {(sucess) in })
                
            }
            

        }else{
            
            
            print("failed to open qq")
            
        }
        
        

        
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

