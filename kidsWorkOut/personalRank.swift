//
//  personalRank.swift
//  kidsWorkOut
//
//  Created by wusuchen on 2016/5/8.
//  Copyright © 2016年 lakst. All rights reserved.
//

import UIKit

class personalRank: UIViewController {
    
    @IBAction func backMainPage(sender: AnyObject) {
        let controller = storyboard!.instantiateInitialViewController()
        //換頁動畫方式
        controller!.modalTransitionStyle = .PartialCurl
        
        self.presentViewController(controller!, animated: false) { () -> Void in
        }
        
    }
    
    
    
    
    @IBOutlet weak var backMainPage: UIButton!
    
    
    //status bar 變成淺色
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
