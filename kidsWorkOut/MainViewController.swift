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
    @IBOutlet weak var scrollViewfoBrainMan: UIScrollView!

    
    let brainmanInxibview = MainPageBrainMan()


    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        containViewRanking.frame = CGRect(x: 0, y: 64, width: 1000, height: 138)

        
        
        let brain = [brainmanInxibview.brain1, brainmanInxibview.brain2, brainmanInxibview.brain3, brainmanInxibview.brain4, brainmanInxibview.brain5, brainmanInxibview.brain6, brainmanInxibview.brain7]
        
        var courses = [
            ["name":"星期日","pic":brain[0]],
            ["name":"星期一","pic":brain[1]],
            ["name":"星期二","pic":brain[2]],
            ["name":"星期三","pic":brain[3]],
            ["name":"星期四","pic":brain[4]],
            ["name":"星期五","pic":brain[5]],
            ["name":"星期六","pic":brain[6]],

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
        pageControl.currentPage = 0
        pageControl.numberOfPages = courses.count
        
        //添加页面到滚动面板里
        let size = scrollViewfoBrainMan.bounds.size
        for (seq,course) in courses.enumerate() {
            let page = UIView()
            let imageView = course["pic"] as! UIView
            page.addSubview(imageView)
            let lbl = UILabel(frame: CGRect(x: 165, y: -20, width: 80, height: 10))
            lbl.textColor = UIColor(red: 70/255, green: 71/255, blue: 214/255, alpha: 1)
            lbl.text = course["name"] as! String
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
        let page = Int(scrollViewfoBrainMan.contentOffset.x / scrollViewfoBrainMan.frame.size.width)
        //设置pageController的当前页
        pageControl.currentPage = page
    }
    
    func pageChanged(sender:UIPageControl) {
        //根据点击的页数，计算scrollView需要显示的偏移量
        var frame = scrollViewfoBrainMan.frame
        frame.origin.x = frame.size.width * CGFloat(sender.currentPage)
        frame.origin.y = 0
        //展现当前页面内容
        scrollViewfoBrainMan.scrollRectToVisible(frame, animated:true)
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
