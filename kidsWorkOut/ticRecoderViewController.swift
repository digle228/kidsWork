//
//  ticRecoderViewController.swift
//  kidsWorkOut
//
//  Created by wusuchen on 2016/4/29.
//  Copyright © 2016年 lakst. All rights reserved.
//

import UIKit

class ticRecoderViewController: UIViewController {

    @IBAction func SaveToTicLog(sender: AnyObject) {
        
        alert()
    }
    
    @IBAction func backMainPage(sender: AnyObject) {

        dismissViewControllerAnimated(true, completion: nil)//
//        let controller = storyboard!.instantiateInitialViewController()
//        //換頁動畫方式
//        controller!.modalTransitionStyle = .PartialCurl
//        
//        self.presentViewController(controller!, animated: false) { () -> Void in
//        }

    
    
    }
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
    

    
    @IBOutlet weak var trackView: UIView!
    

    @IBAction func backMainPageTicLog(sender: AnyObject) {
                dismissViewControllerAnimated(true, completion: nil)
//        let controller = storyboard!.instantiateInitialViewController()
//        //換頁動畫方式
//        controller!.modalTransitionStyle = .PartialCurl
//        
//        self.presentViewController(controller!, animated: false) { () -> Void in
//        }
        
    }
    

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
        // Do any additional setup after loading the view.
    }
    
    
    func alert(){
        
        let controller = storyboard!.instantiateViewControllerWithIdentifier("MainPage")
        let alertController = UIAlertController(title: "儲存成功", message: "回到主頁面", preferredStyle: UIAlertControllerStyle.Alert )
        
        
        let callAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Destructive, handler: { action in self.presentViewController(controller, animated: false, completion: nil)
        })
        
        alertController.addAction(callAction)
        self.presentViewController(alertController, animated: true, completion: nil)
        
        
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
