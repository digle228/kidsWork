//
//  personalRank.swift
//  kidsWorkOut
//
//  Created by wusuchen on 2016/5/8.
//  Copyright © 2016年 lakst. All rights reserved.
//

import UIKit


enum personalType {
    case One
    case Two
    case Three
    case Four
    case Five
    case Six
    case Seven
}


class personalRank: UIViewController {
    
   
    @IBAction func backMainPage(sender: AnyObject) {
//        let controller = storyboard!.instantiateInitialViewController()
        //換頁動畫方式
//        controller!.modalTransitionStyle = .PartialCurl
        dismissViewControllerAnimated(true, completion: nil)

        
//        self.presentViewController(controller!, animated: false) { () -> Void in
//        }
        
    }
    
    var type: personalType!
    
    @IBOutlet weak var nameLabel: UILabel!
    

    
    let afterAddFriendView = UIView(frame:CGRectMake(323, 28, 32, 32))

        @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func addFriendButton(sender: AnyObject) {
    
    addFriendalert()

        
    
    }
    
    @IBOutlet weak var addFriendsVIew: UIView!
    
    func addFriendalert(){
        
        let alertController = UIAlertController(title: "加入朋友", message: "確定加入朋友？", preferredStyle: UIAlertControllerStyle.Alert )
        
        
//         let alertController2 = UIAlertController(title: "加入朋友", message: "完成", preferredStyle: UIAlertControllerStyle.Alert )
        
        
        let callAction2 = UIAlertAction(title: "取消", style: UIAlertActionStyle.Default   , handler: { action in
        })
        
        
        let callAction = UIAlertAction(title: "確定", style: UIAlertActionStyle.Default, handler: { action in self.afterAddFriendView.addSubview(self.addFriendsVIew)

        })
        
//        let callActionAdd = UIAlertAction(title: "確定", style: UIAlertActionStyle.Default, handler: { action in 
//            
//        })

        alertController.addAction(callAction2)
        alertController.addAction(callAction)
        
        self.presentViewController(alertController, animated: true, completion: nil)

//        self.dismissViewControllerAnimated(true, completion: nil )
    }
    
    //status bar 變成淺色
//    override func preferredStatusBarStyle() -> UIStatusBarStyle {
//        return UIStatusBarStyle.LightContent
//    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        
        
        switch type! {
        case .One :
            self.imageView.image = UIImage(named: "man1")
            self.nameLabel.text = "強強"
        case .Two :
            self.imageView.image = UIImage(named: "man2")
            self.nameLabel.text = "小靜"
        case .Three :
            self.imageView.image = UIImage(named: "man3")
            self.nameLabel.text = "小勇"
        case .Four :
            self.imageView.image = UIImage(named: "man4")
            self.nameLabel.text = "豆豆"
        case .Five :
            self.imageView.image = UIImage(named: "man5")
            self.nameLabel.text = "喬安"
        case .Six :
            self.imageView.image = UIImage(named: "man6")
            self.nameLabel.text = "安安"
        case .Seven :
            self.imageView.image = UIImage(named: "man7")
            self.nameLabel.text = "可愛弟"
        // Do any additional setup after loading the view.
     }
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
