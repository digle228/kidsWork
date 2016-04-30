//
//  ticRecoderViewController.swift
//  kidsWorkOut
//
//  Created by wusuchen on 2016/4/29.
//  Copyright © 2016年 lakst. All rights reserved.
//

import UIKit

class ticRecoderViewController: UIViewController {

    @IBOutlet weak var ticAboutLife: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ticAboutLife.transform = CGAffineTransformMakeRotation(CGFloat(-M_PI_2))
        ticAboutLife.maximumValue = 10
        ticAboutLife.minimumValue = 0
        ticAboutLife.setThumbImage(UIImage(named: "dontlazy.png"), forState: UIControlState.Normal)
        
        
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
