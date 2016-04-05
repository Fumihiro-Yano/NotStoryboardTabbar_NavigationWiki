//
//  ViewController2.swift
//  NotStoryboardTabbarWiki
//
//  Created by 矢野史洋 on 2016/04/05.
//  Copyright © 2016年 矢野史洋. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.greenColor()
        // PopButtonを生成.
        let presentButton = UIButton()
        presentButton.frame = CGRectMake(0,0,200,40)
        presentButton.backgroundColor = UIColor.redColor()
        presentButton.layer.masksToBounds = true
        presentButton.setTitle("Present View4", forState: UIControlState.Normal)
        presentButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        presentButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        presentButton.layer.cornerRadius = 20.0
        presentButton.layer.position = CGPoint(x: self.view.frame.width/2, y:200)
        presentButton.tag = 0
        presentButton.addTarget(self, action: "onClickPresentButton:", forControlEvents: .TouchUpInside)
        
        // viewにButtonを追加.
        self.view.addSubview(presentButton)
    }
    
    func onClickPresentButton(sender : UIButton){
        
        let viewController4 = ViewController4()
        let nav = UINavigationController(rootViewController: viewController4)
        
        // 画面遷移.
        self.presentViewController(nav, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

