//
//  ViewController4.swift
//  NotStoryboardTabbarWiki
//
//  Created by 矢野史洋 on 2016/04/05.
//  Copyright © 2016年 矢野史洋. All rights reserved.
//

import UIKit

class ViewController4: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.purpleColor()
        // もどるButtonを生成.
        let dismissButton = UIButton()
        dismissButton.frame = CGRectMake(0,0,200,40)
        dismissButton.backgroundColor = UIColor.redColor()
        dismissButton.layer.masksToBounds = true
        dismissButton.setTitle("もどる", forState: UIControlState.Normal)
        dismissButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        dismissButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        dismissButton.layer.cornerRadius = 20.0
        dismissButton.layer.position = CGPoint(x: self.view.frame.width/2, y:200)
        dismissButton.tag = 1
        dismissButton.addTarget(self, action: "onClickDismissButton:", forControlEvents: .TouchUpInside)
        
        // viewにButtonを追加.
        self.view.addSubview(dismissButton)
    }
    
    func onClickDismissButton(sender : UIButton){
        
        // viewを閉じる.
        self.navigationController?.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

