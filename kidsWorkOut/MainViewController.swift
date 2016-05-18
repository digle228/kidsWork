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
    
    @IBAction func pageControlChang(sender: UIPageControl) {
        
        
        
    }
    
    @IBAction func LogTicAndExcerise(sender: AnyObject) {
        alert()
    }
    
    @IBOutlet weak var scrollViewfoBrainMan: UIScrollView!
    
    
    let brainmanInxibview = MainPageBrainMan()
    
    
    
    
    func SYNCView (sender: AnyObject) {
        
        
        //            let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard!.instantiateViewControllerWithIdentifier("SYNCViewController") as UIViewController
        //            let rootViewController = storyboard.instantiateViewControllerWithIdentifier("MainPage") as UIViewController
        
        self.presentViewController(vc, animated: true, completion: nil)
        
        
    }
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        containViewRanking.frame = CGRect(x: 0, y: 64, width: 1000, height: 138)
        
        
        
        // xib 按鈕增加動作 SYNCView 是function名稱
        brainmanInxibview.SYNCButton.addTarget(self, action: #selector(MainViewController.SYNCView(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        
        
        
        let brain = [brainmanInxibview.brain1, brainmanInxibview.brain2, brainmanInxibview.brain3, brainmanInxibview.brain4, brainmanInxibview.brain5, brainmanInxibview.brain6, brainmanInxibview.brain7]
        let date = NSDate()
        let dateFormat = NSDateFormatter()
        dateFormat.dateFormat = "EEEE dd/MM/yyyy"
        
        let day1 = dateFormat.stringFromDate(date)
        let oneDay:Double = 60 * 60 * 24
        let day2 = dateFormat.stringFromDate(date.dateByAddingTimeInterval(oneDay))
        let day3 = dateFormat.stringFromDate(date.dateByAddingTimeInterval(oneDay*2))
        let day4 = dateFormat.stringFromDate(date.dateByAddingTimeInterval(oneDay*3))
        let day5 = dateFormat.stringFromDate(date.dateByAddingTimeInterval(oneDay*4))
        let day6 = dateFormat.stringFromDate(date.dateByAddingTimeInterval(oneDay*5))
        let day7 = dateFormat.stringFromDate(date.dateByAddingTimeInterval(oneDay*6))
        
        
        
        
        
        let courses = [
            ["name":"\(day1)","pic":brain[0]],
            ["name":"\(day2)","pic":brain[1]],
            ["name":"\(day3)","pic":brain[2]],
            ["name":"\(day4)","pic":brain[3]],
            ["name":"\(day5)","pic":brain[4]],
            ["name":"\(day6)","pic":brain[5]],
            ["name":"\(day7)","pic":brain[6]],
            
            ]
        
        
        
        self.scrollViewfoBrainMan.contentSize = CGSizeMake(
            CGFloat(CGRectGetWidth(self.view.bounds)) * CGFloat(brain.count),
            CGRectGetHeight(self.brainmanInxibview.bounds)
        )
        
        scrollViewfoBrainMan.showsHorizontalScrollIndicator = false
        scrollViewfoBrainMan.showsVerticalScrollIndicator = false
        scrollViewfoBrainMan.scrollsToTop = false
        scrollViewfoBrainMan.delegate = self
        scrollViewfoBrainMan.pagingEnabled = true
        pageControl.numberOfPages = courses.count
        pageControl.currentPage = 0
        
        
        //添加页面到滚动面板里 enumerate() 依照順序排列
        let size = scrollViewfoBrainMan.bounds.size
        
        let courserReverse = courses.reverse() //反向排
        
        for (seq,courses) in courses.enumerate() {
            let page = UIView()
            let imageView = courses["pic"] as! UIView
            page.addSubview(imageView)
            
            let lbl = UILabel(frame: CGRectMake(0, -350, self.view.bounds.size.width , self.view.bounds.size.height))
            //            x: 165, y: -20, width: 150, height: 12
            lbl.textColor = UIColor(red: 70/255, green: 71/255, blue: 214/255, alpha: 1)
            lbl.textAlignment = .Center
            lbl.text = courses["name"] as? String
            
            page.addSubview(lbl)
            
            page.frame = CGRect(x: CGFloat(seq) * size.width, y: 0,
                                width: size.width, height: size.height)
            scrollViewfoBrainMan.addSubview(page)
            
            
        }
        
        pageControl.addTarget(self, action: #selector(pageChanged(_:)),
                              forControlEvents: UIControlEvents.ValueChanged)
        
        
    }
    
    
    
    
    
    
    
    
    //UIScrollViewDelegate方法，每次滚动结束后调用
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        
        //通过scrollView内容的偏移计算当前显示的是第几页
        let page = round(scrollViewfoBrainMan.contentOffset.x / scrollViewfoBrainMan.frame.size.width)
        //设置pageController的当前页
        pageControl.currentPage = Int(page)
        
        
        
    }
    
    
    
    
    
    func pageChanged(sender:UIPageControl) {
        //根据点击的页数，计算scrollView需要显示的偏移量
        var frame = scrollViewfoBrainMan.frame
        frame.origin.x = frame.size.width * CGFloat(sender.currentPage)
        frame.origin.y = 0
        //展现当前页面内容
        scrollViewfoBrainMan.scrollRectToVisible(frame, animated:true)
    }
    
    
    
    
    
    
    
    //UIAlertControllerStyle.ActionSheet UIAlertControllerStyle.Alert
    func alert()  {
        
        let SYNC = storyboard!.instantiateViewControllerWithIdentifier("SYNCViewController") as UIViewController
        //            let rootViewController = storyboard.instantiateViewControllerWithIdentifier("MainPage") as UIViewController
        let TicLog = storyboard!.instantiateViewControllerWithIdentifier("ticLog") as UIViewController
        
        let alertController = UIAlertController(title: "請選擇記錄類別", message: "", preferredStyle: UIAlertControllerStyle.ActionSheet)
        let callAction = UIAlertAction(title: "運動記錄", style: UIAlertActionStyle.Default , handler: {
            action in self.presentViewController(SYNC, animated: true, completion: nil)
        })
        
        let callAction2 = UIAlertAction(title: "抽動記錄", style: UIAlertActionStyle.Default, handler: {
            action in self.presentViewController(TicLog, animated: true, completion: nil) })
        let callAction3 = UIAlertAction(title: "取消", style: UIAlertActionStyle.Cancel, handler: {
            action in  })
        alertController.addAction(callAction)
        alertController.addAction(callAction2)
        alertController.addAction(callAction3)
        
        
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
