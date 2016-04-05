//
//  ViewController.swift
//  NotStoryboardTabbarWiki
//
//  Created by 矢野史洋 on 2016/04/05.
//  Copyright © 2016年 矢野史洋. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.redColor()
        self.title = "View"
        
        let pushViewButton = UIButton(frame: CGRectMake(0,0,200,50))
        pushViewButton.backgroundColor = UIColor.orangeColor()
        pushViewButton.layer.masksToBounds = true
        pushViewButton.setTitle("Puhs View3", forState: .Normal)
        pushViewButton.layer.cornerRadius = 20.0
        pushViewButton.layer.position = CGPoint(x: self.view.bounds.width/2, y:200)
        pushViewButton.addTarget(self, action: "onClickpushViewButton:", forControlEvents: .TouchUpInside)
        
        self.view.addSubview(pushViewButton)
    }

    internal func onClickpushViewButton(sender: UIButton){
        let viewController3 = ViewController3()
        self.navigationController?.pushViewController(viewController3, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

