//
//  MainViewController.swift
//  kidsWorkOut
//
//  Created by wusuchen on 2016/3/3.
//  Copyright © 2016年 lakst. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UIScrollViewDelegate{

    @IBOutlet weak var containViewRanking: UIView!
    
    @IBOutlet weak var pageControl: UIPageControl!
    
    @IBOutlet weak var SyncButton: UIButton!
    
    
    @IBAction func SyncButton(sender: UIButton) {
    }
    @IBAction func pageControlChang(sender: AnyObject) {
        
    }

    @IBOutlet weak var BainManView: MainPageBrainMan!
    
    let brainmanInxibview = MainPageBrainMan()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        containViewRanking.frame = CGRect(x: 0, y: 64, width: 1000, height: 144)
//        SyncButton.layer.cornerRadius = 10
//        pageControl .numberOfPages = 7
//        
       
        BainManView.view = brainmanInxibview.brain2
       
//        switch pageControl.currentPage {
//        case 0:
//            BainManView.view = brainmanInxibview.brain1
//        case 1:
//             BainManView.view = brainmanInxibview.brain2
//        default:
//            BainManView.view = brainmanInxibview.brain1
//        }
        
        

        
//        MainScrollView.contentSize = CGSize(width: 1000, height: 144)
//        
//        MainScrollView.contentOffset = CGPoint(x: 0, y: 0)
//        // Do any additional setup after loading the view.
//        
//        MainScrollView.setContentOffset(CGPoint(x: 0, y: 0), animated: true)

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
