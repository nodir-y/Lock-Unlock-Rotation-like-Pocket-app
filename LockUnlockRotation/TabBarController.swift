//
//  TabBarController.swift
//  LockUnlockRotation
//
//  Created by NY on 9/12/15.
//  Copyright © 2015 NY. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        
        if let selected = selectedViewController {
            return selected.supportedInterfaceOrientations()
        }
        
        return super.supportedInterfaceOrientations()
    }

}
