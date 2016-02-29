//
//  ViewController.swift
//  Bouncing menu buttons
//
//  Created by Tiffany Diamanta on 2/29/16.
//  Copyright © 2016 Tiffany Diamanta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let mainButton = UIButton(type: UIButtonType.System) as UIButton
    let firstButton = UIButton(type: UIButtonType.System) as UIButton
    let secondButton = UIButton(type: UIButtonType.System) as UIButton
    let thirdButton = UIButton(type: UIButtonType.System) as UIButton
    var labelNameP = UILabel()
    var labelNameA = UILabel()
    var labelNameW = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let screenSize: CGRect = UIScreen.mainScreen().bounds
        let valueWidth = screenSize.width * 0.17
        let valueHeight = screenSize.height * 0.10
        
        firstButton.frame = CGRectMake(0, 0, valueWidth, valueHeight)
        firstButton.center = CGPointMake(view.bounds.midX, view.bounds.midY)
        firstButton.layer.cornerRadius = 35
        firstButton.backgroundColor = UIColor.blackColor()
        firstButton.addTarget(self, action: "", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(firstButton)
        
        secondButton.frame = CGRectMake(0, 0, valueWidth, valueHeight)
        secondButton.center = CGPointMake(view.bounds.midX, view.bounds.midY)
        secondButton.layer.cornerRadius = 35
        secondButton.backgroundColor = UIColor.blueColor()
        secondButton.addTarget(self, action: "", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(secondButton)
        
        thirdButton.frame = CGRectMake(0, 0, valueWidth, valueHeight)
        thirdButton.center = CGPointMake(view.bounds.midX, view.bounds.midY)
        thirdButton.layer.cornerRadius = 35
        thirdButton.backgroundColor = UIColor.grayColor()
        thirdButton.addTarget(self, action: "", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(thirdButton)
        
        mainButton.frame = CGRectMake(0, 0, valueWidth, valueHeight)
        mainButton.center = CGPointMake(view.bounds.midX, view.bounds.midY)
        mainButton.layer.cornerRadius = 35
        mainButton.backgroundColor = UIColor.greenColor()
        mainButton.addTarget(self, action: "applyEffect", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(mainButton)
        
        labelNameP.frame = CGRectMake(0, 0, 10, 10)
        labelNameP.center = CGPointMake(firstButton.bounds.midX, firstButton.bounds.midY)
        labelNameP.text = "P"
        labelNameP.font = UIFont(name: "HelveticaNeue", size: 15)
        labelNameP.textColor = UIColor.whiteColor()
        firstButton.addSubview(labelNameP)
        
        labelNameA.frame = CGRectMake(0, 0, 10, 10)
        labelNameA.center = CGPointMake(secondButton.bounds.midX, secondButton.bounds.midY)
        labelNameA.text = "A"
        labelNameA.font = UIFont(name: "HelveticaNeue", size: 15)
        labelNameA.textColor = UIColor.whiteColor()
        secondButton.addSubview(labelNameA)
        
        labelNameW.frame = CGRectMake(0, 0, 15, 10)
        labelNameW.center = CGPointMake(thirdButton.bounds.midX, thirdButton.bounds.midY)
        labelNameW.text = "W"
        labelNameW.font = UIFont(name: "HelveticaNeue", size: 15)
        labelNameW.textColor = UIColor.whiteColor()
        thirdButton.addSubview(labelNameW)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        UIView.animateWithDuration(2.0, animations: ({
        
        let screenSize: CGRect = UIScreen.mainScreen().bounds
        let valueWidth = screenSize.width * 0.17
        let valueHeight = screenSize.height * 0.10
        
        self.firstButton.frame = CGRectMake(0, 0, valueWidth, valueHeight)
        self.firstButton.center = CGPointMake(self.view.bounds.midX, self.view.bounds.midY)
        self.firstButton.layer.cornerRadius = 35
        self.firstButton.backgroundColor = UIColor.blackColor()
        self.firstButton.addTarget(self, action: "", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(self.firstButton)
        
        self.secondButton.frame = CGRectMake(0, 0, valueWidth, valueHeight)
        self.secondButton.center = CGPointMake(self.view.bounds.midX, self.view.bounds.midY)
        self.secondButton.layer.cornerRadius = 35
        self.secondButton.backgroundColor = UIColor.blueColor()
        self.secondButton.addTarget(self, action: "", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(self.secondButton)
        
        self.thirdButton.frame = CGRectMake(0, 0, valueWidth, valueHeight)
        self.thirdButton.center = CGPointMake(self.view.bounds.midX, self.view.bounds.midY)
        self.thirdButton.layer.cornerRadius = 35
        self.thirdButton.backgroundColor = UIColor.grayColor()
        self.thirdButton.addTarget(self, action: "", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(self.thirdButton)
            
        self.mainButton.frame = CGRectMake(0, 0, valueWidth, valueHeight)
        self.mainButton.center = CGPointMake(self.view.bounds.midX, self.view.bounds.midY)
        self.mainButton.layer.cornerRadius = 35
        self.mainButton.backgroundColor = UIColor.greenColor()
        self.mainButton.addTarget(self, action: "applyEffect", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(self.mainButton)
            
            self.view.layoutIfNeeded()
            
            }))
    }
    
    func applyEffect() {
    print("the effect works")
        
        UIView.animateWithDuration(2.0, animations: ({
            
            let screenSize: CGRect = UIScreen.mainScreen().bounds
            let valueWidth = screenSize.width * 0.17
            let valueHeight = screenSize.height * 0.10
            
            self.firstButton.frame = CGRectMake(screenSize.midX * 0.30, screenSize.midY * 0.60, valueWidth, valueHeight)
            self.firstButton.layer.cornerRadius = 35
            self.firstButton.backgroundColor = UIColor.blackColor()
            self.firstButton.addTarget(self, action: "", forControlEvents: UIControlEvents.TouchUpInside)
            self.view.addSubview(self.firstButton)
            
            self.secondButton.frame = CGRectMake(screenSize.midX * 0.82, screenSize.midY * 0.50, valueWidth, valueHeight)
            self.secondButton.layer.cornerRadius = 35
            self.secondButton.backgroundColor = UIColor.blueColor()
            self.secondButton.addTarget(self, action: "", forControlEvents: UIControlEvents.TouchUpInside)
            self.view.addSubview(self.secondButton)
            
            self.thirdButton.frame = CGRectMake(screenSize.midX * 1.31, screenSize.midY * 0.60, valueWidth, valueHeight)
            self.thirdButton.layer.cornerRadius = 35
            self.thirdButton.backgroundColor = UIColor.grayColor()
            self.thirdButton.addTarget(self, action: "", forControlEvents: UIControlEvents.TouchUpInside)
            self.view.addSubview(self.thirdButton)
        
            self.view.layoutIfNeeded()
        }))
    }


}

