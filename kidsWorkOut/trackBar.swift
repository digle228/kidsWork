//
//  trackBar.swift
//  kidsWorkOut
//
//  Created by wusuchen on 2016/4/30.
//  Copyright © 2016年 lakst. All rights reserved.
//

import UIKit

@IBDesignable class trackBar: UIView {

    //slider 的設定
    
    var nibName: String = "trackBar"
    
    var view: UIView!
    
    
    @IBOutlet var trackBarTextLabel: UILabel!
    
    @IBOutlet weak var ticAboutLife: UISlider!
    
    //滑桿移動的量
    
    let step: Float = 1
    
    
    @IBAction func sliderValueChanged(sender: UISlider) {
        
        let roundedValue = round(sender.value / step) * step
        sender.value = roundedValue
        let currentValue = Int(sender.value)
        trackBarTextLabel.text = "\(currentValue)"

    }
    
    //滑桿的樣子
    func trackBarShow()  {

        ticAboutLife.setThumbImage(UIImage(named: "30x30-dot.png"), forState: UIControlState.Normal)
        //轉90度
        ticAboutLife.transform = CGAffineTransformMakeRotation(CGFloat(-M_PI_2))
 
        ticAboutLife.maximumValue = 10
        ticAboutLife.minimumValue = 0
        ticAboutLife.setThumbImage(UIImage(named: "30x30-dot.png"), forState: UIControlState.Normal)
        
        ticAboutLife.setMinimumTrackImage(UIImage(named: "bar.png"), forState: UIControlState.Normal)
        ticAboutLife.setMaximumTrackImage(UIImage(named: "bar2.png"), forState: UIControlState.Normal)
        
        
        
    }

    
    
    func xibSetup() {
        view = loadViewFromNib()
        trackBarShow()

        // use bounds not frame or it'll be offset
        view.frame = bounds
        
        // Make the view stretch with containing view
        view.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleHeight]
        // Adding custom subview on top of our view (over any custom drawing > see note below)
        addSubview(view)
    }
    
    func loadViewFromNib() -> UIView {
        let bundle = NSBundle(forClass: self.dynamicType)
        let nib = UINib(nibName: nibName, bundle: bundle)
        let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        
        return view
        
    }
    
    
    
    
    override init(frame: CGRect) {
        // 1. setup any properties here
        
        // 2. call super.init(frame:)
        super.init(frame: frame)
        // 3. Setup view from .xib file
        xibSetup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        // 1. setup any properties here
        
        // 2. call super.init(coder:)
        super.init(coder: aDecoder)
        // 3. Setup view from .xib file
        xibSetup()
    }
    
    
    
    //        let slider:UISlider = UISlider(frame: CGRect(x: self.view.frame.size.width * 0.2, y: self.view.frame.size.height * 9 / 12, width: self.view.frame.size.width * 0.6, height: 10))
    //        //設定滑桿最大值及最小值
    //        slider.maximumValue = 10
    //        slider.minimumValue = 0
    //        //設定滑桿初始值(預設值)
    //        slider.value = slider.maximumValue * 0
    //        self.view.addSubview(slider)
    //
    //        //圖片是一比一的載入，要先處理好其尺寸
    //        //thumb是圓點，MinimumTrackImage是最小值的圖，是最大值的圖
    //        slider.setThumbImage(UIImage(named: "thumb"), forState: UIControlState.Normal)
    //        slider.setMinimumTrackImage(UIImage(named: "mintrack"), forState: UIControlState.Normal)
    //        slider.setMaximumTrackImage(UIImage(named: "maxtrack"), forState: UIControlState.Normal)

    


}
