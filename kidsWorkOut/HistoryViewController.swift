//
//  HistoryViewController.swift
//  kidsWorkOut
//
//  Created by wusuchen on 2016/3/26.
//  Copyright © 2016年 lakst. All rights reserved.
//

//    let colorTop = UIColor(rgba: "##8968CD").CGColor

import UIKit

class HistoryViewController: UIViewController {
    
    
    @IBOutlet weak var heartRate: UIView!
    
    @IBOutlet weak var tic: UIView!
    
    @IBOutlet weak var both: UIView!
    
    @IBOutlet weak var ScrollViewForHistory: UIScrollView!
    
    @IBOutlet weak var HistoryButton: UISegmentedControl!
    
    
    
    func clearSubview() {
        for heartRate in self.heartRate.subviews {
            heartRate.removeFromSuperview()
            
        }
        for tic in self.tic.subviews {
            tic.removeFromSuperview()
        }
        for both in self.both.subviews {
            both.removeFromSuperview()
        }
    }
    
    
    let xibview = HistoryView()


    
    func ticView(segment : Int){
        
        var recorder1 = [xibview.dayTic, xibview.weekTic, xibview.monthTic, xibview.yearTic]
        tic.insertSubview(recorder1[segment],atIndex: 1)
    }
    
    func hearRateView (segment : Int) {
        var recorder2 = [xibview.day, xibview.week, xibview.month, xibview.year]
        heartRate.insertSubview(recorder2[segment],atIndex: 2)
    }

    func both(segment: Int)  {
        var recorder3 = [xibview.dayBoth, xibview.weekBoth, xibview.monthBoth, xibview.yearBoth]
        
        both.insertSubview(recorder3[segment], atIndex: 3)
    }
    
    @IBAction func HistoryButtonChange(sender: AnyObject) {

       
        
        switch HistoryButton.selectedSegmentIndex {
        case 0:
            clearSubview()
            ticView(0)
            hearRateView(0)
            both(0)

            
        case 1:
            clearSubview()
            ticView(1)
            hearRateView(1)
            both(1)

        case 2:
            clearSubview()
            ticView(2)
            hearRateView(2)
            both(2)

        case 3:
            clearSubview()
            ticView(3)
            hearRateView(3)
            both(3)

 
        default:
            clearSubview()
            ticView(0)
            hearRateView(0)
            both(0)



        }
        
    }
    
    
    //漸層指令
    
    class gradientColors {
        let colorTop = UIColor(red: 195/255, green: 255/255, blue: 208/255, alpha: 1).CGColor
        //        let colorBottom = UIColor(red: 13/255, green: 96/255, blue: 209/255, alpha: 1).CGColor
        let colorBottom = UIColor(red: 180/255, green: 255/255, blue: 255/255, alpha: 1).CGColor
        let gl: CAGradientLayer
        init() {
            gl = CAGradientLayer()
            gl.colors = [ colorTop, colorBottom]
            gl.locations = [ 0.0, 1.0]
        }
    }
    
    let colors = gradientColors()
    
//    func refresh() {
//        let backgroundLayer = colors.gl
//        backgroundLayer.frame = backGroundView.bounds
//        //        backGroundView.layer.addSublayer(backgroundLayer)
//        backGroundView.layer.insertSublayer(backgroundLayer, atIndex: 0)
//    }
    
    
    //漸層指令
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.ScrollViewForHistory.contentSize = CGSize(width: 375, height: 1300 )
        ticView(0)
        hearRateView(0)
        both(0)
        
//        self.ScrollViewForHistory.contentOffset = CGPoint(x: 375, y: 0)
//        self.ScrollViewForHistory.setContentOffset(CGPoint(x: 375, y: 0), animated: true)
        
        //        let colorone = UIColor(red: 195/255, green: 255/255, blue: 208/255, alpha: 1)
        //        let colortwo = UIColor(colorLiteralRed: 70/255, green: 71/255, blue: 214/255, alpha: 1)
        //        let backGroundView = CAGradientLayer()
        //        backGroundView.colors = [colorone, colortwo]
        //        backGroundView.locations = [0.0, 1.0]
        
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
