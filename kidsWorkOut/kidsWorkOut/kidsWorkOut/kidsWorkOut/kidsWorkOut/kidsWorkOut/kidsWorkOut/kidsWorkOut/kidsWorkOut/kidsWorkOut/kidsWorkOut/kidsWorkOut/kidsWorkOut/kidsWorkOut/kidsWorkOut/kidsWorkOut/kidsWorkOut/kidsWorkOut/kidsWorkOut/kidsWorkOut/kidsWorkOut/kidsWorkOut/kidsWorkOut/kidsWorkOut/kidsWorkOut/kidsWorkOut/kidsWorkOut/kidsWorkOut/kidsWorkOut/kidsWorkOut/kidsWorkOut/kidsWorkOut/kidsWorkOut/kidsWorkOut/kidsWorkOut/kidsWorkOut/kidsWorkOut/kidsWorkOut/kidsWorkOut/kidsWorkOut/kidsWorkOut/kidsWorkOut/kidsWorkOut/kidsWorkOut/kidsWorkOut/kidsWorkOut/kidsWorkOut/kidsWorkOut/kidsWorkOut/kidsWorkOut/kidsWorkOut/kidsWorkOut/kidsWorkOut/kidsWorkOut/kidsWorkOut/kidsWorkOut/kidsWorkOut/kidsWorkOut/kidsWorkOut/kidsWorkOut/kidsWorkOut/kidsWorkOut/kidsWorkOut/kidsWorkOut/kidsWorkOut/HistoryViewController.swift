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

    @IBOutlet weak var backGroundView: UIView!
    
    @IBOutlet weak var heartRate: UIView!
    
    @IBOutlet weak var tic: UIView!
    
    @IBOutlet weak var heartAndTic: UIView!
    
    
    @IBOutlet weak var HistoryButton: UISegmentedControl!

    
    @IBAction func HistoryButtonChange(sender: AnyObject) {
        let xibview = HistoryView()
        var recorder = [xibview.day, xibview.day, xibview.week, xibview.month, xibview.year]
        
        func clearSubview() {
            for heartRate in self.heartRate.subviews {
                heartRate.removeFromSuperview()

            }
            
        }
                switch HistoryButton.selectedSegmentIndex {
                case 0:
                    clearSubview()
                    heartRate.insertSubview(recorder[1], atIndex: 0)
//                    tic.insertSubview(recorder[1], atIndex: 0)
//                    heartAndTic.insertSubview(recorder[1], atIndex: 0)

                case 1:
                    clearSubview()
                    heartRate.insertSubview(recorder[2], atIndex: 0)
//                    tic.insertSubview(recorder[2], atIndex: 0)
//                    heartAndTic.insertSubview(recorder[2], atIndex: 0)
                case 2:
                    clearSubview()
                    heartRate.insertSubview(recorder[3], atIndex: 0)
//                    tic.insertSubview(recorder[3], atIndex: 0)
//                    heartAndTic.insertSubview(recorder[3], atIndex: 0)
                case 3:
                    clearSubview()
                    heartRate.insertSubview(recorder[4], atIndex: 0)
//                    tic.insertSubview(recorder[4], atIndex: 0)
//                    heartAndTic.insertSubview(recorder[4], atIndex: 0)
                default:
                    clearSubview()
                    heartRate.insertSubview(recorder[0], atIndex: 0)
//                    tic.insertSubview(recorder[0], atIndex: 0)
//                    heartAndTic.insertSubview(recorder[0], atIndex: 0)
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
    
    func refresh() {
        let backgroundLayer = colors.gl
        backgroundLayer.frame = backGroundView.bounds
//        backGroundView.layer.addSublayer(backgroundLayer)
        backGroundView.layer.insertSublayer(backgroundLayer, atIndex: 0)
    }
    
    
//漸層指令
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
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
