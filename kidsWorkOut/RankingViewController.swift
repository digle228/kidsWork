//
//  RankingViewController.swift
//  kidsWorkOut
//
//  Created by wusuchen on 2016/4/28.
//  Copyright © 2016年 lakst. All rights reserved.
//

import UIKit

class RankingViewController: UIViewController {

    @IBOutlet var ranking: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // UIScrollView need set contenSize
        ranking.contentSize = CGSize(width: 1000, height: 138)
        ranking.contentOffset = CGPoint(x: 0, y: 0)
        ranking.alwaysBounceVertical.boolValue
        // Do any additional setup after loading the view.
        
        
    }

           
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let personalController = segue.destinationViewController as! personalRank
        
        switch segue.identifier! {
        case "One" :
           personalController.type =  personalType.One
        case "Two" :
            personalController.type = personalType.Two
        case "Three" :
            personalController.type = personalType.Three
            
        default:
            break
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
