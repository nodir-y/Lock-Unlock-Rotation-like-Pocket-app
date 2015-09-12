//
//  RotationViewController.swift
//  LockUnlockRotation
//
//  Created by NY on 9/12/15.
//  Copyright © 2015 NY. All rights reserved.
//

import UIKit

class RotationViewController: UIViewController {
    
    var isRotableView = true;
    var lockedOrientation = UIInterfaceOrientationMask.Portrait

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        
        if isRotableView {
            return UIInterfaceOrientationMask.All
        }
        
        return lockedOrientation
    }
    
    // MARK: - Actions
    
    @IBAction func lockButtonAction(sender: AnyObject) {
        isRotableView = !isRotableView
        
        var title = "Lock"
        
        if !isRotableView {
            
            title = "Unlock"
            
            switch UIDevice.currentDevice().orientation.rawValue {
                
            case UIDeviceOrientation.PortraitUpsideDown.rawValue: lockedOrientation =  UIInterfaceOrientationMask.PortraitUpsideDown
            case UIDeviceOrientation.LandscapeLeft.rawValue: lockedOrientation =  UIInterfaceOrientationMask.LandscapeRight
            case UIDeviceOrientation.LandscapeRight.rawValue: lockedOrientation =  UIInterfaceOrientationMask.LandscapeLeft
                
            default: lockedOrientation = UIInterfaceOrientationMask.Portrait
            }
        }
        
        if sender is UIButton {
            sender.setTitle(title, forState: UIControlState.Normal)
        }
    }
}
