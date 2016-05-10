//
//  ticRecoderViewController.swift
//  kidsWorkOut
//
//  Created by wusuchen on 2016/4/29.
//  Copyright © 2016年 lakst. All rights reserved.
//

import UIKit

class ticRecoderViewController: UIViewController {

//    @IBOutlet weak var ticAboutLife: UISlider!
//    
//    let step: Float = 1
//
//    @IBAction func sliderValueChanged(sender: UISlider) {
//        let roundedValue = round(sender.value / step) * step
//        sender.value = roundedValue
//    }
//    
    
//    class MyClass: UIView {
//        
//        class func instanceFromNib() -> UIView {
//            return UINib(nibName: "trackbar", bundle: nil).instantiateWithOwner(nil, options: nil)[0] as! UIView
//        }
//        
//        
//    }
//    
//    var view = MyClass.instanceFromNib()
//    self.view.addSubview(view)
//
    

    @IBOutlet weak var trackLabel: UILabel!
    
    @IBOutlet weak var trackView: UIView!
    
    
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
