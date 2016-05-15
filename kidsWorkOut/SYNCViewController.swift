//
//  SYNCViewController.swift
//  kidsWorkOut
//
//  Created by wusuchen on 2016/5/15.
//  Copyright © 2016年 lakst. All rights reserved.
//

import UIKit

class SYNCViewController: UIViewController {
    
    
    
    @IBOutlet weak var SYNCScrollView: UIScrollView!
    
    @IBAction func backMainPage(sender: AnyObject) {
        let controller = storyboard!.instantiateInitialViewController()
        //換頁動畫方式
        controller!.modalTransitionStyle = .PartialCurl
        
        self.presentViewController(controller!, animated: false) { () -> Void in
        }
        
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        var lightBlur = UIBlurEffect(style: UIBlurEffectStyle.Light)
        var blurView = UIVisualEffectView(effect: lightBlur)
        
        self.SYNCScrollView.contentSize = CGSizeMake(375, 800)
        self.view.backgroundColor = UIColor(colorLiteralRed: 218/255, green: 218/255, blue: 239/255, alpha: 0.1)
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
