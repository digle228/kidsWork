//
//  HistoryView.swift
//  kidsWorkOut
//
//  Created by wusu chiang on 2016/4/27.
//  Copyright © 2016年 lakst. All rights reserved.
//

import UIKit

@IBDesignable class HistoryView: UIView {
    
    var nibName: String = "HistoryView"
    
    var view: UIView!
    
    @IBOutlet var dayTic: UIView!
    
    @IBOutlet var weekTic: UIView!
    
    @IBOutlet var monthTic: UIView!
    
    @IBOutlet var yearTic: UIView!
    
    @IBOutlet var dayBoth: UIView!
    
    @IBOutlet var weekBoth: UIView!
    
    @IBOutlet var monthBoth: UIView!
    
    @IBOutlet var yearBoth: UIView!
    
    @IBOutlet var day: UIView!
    
    @IBOutlet var week: UIView!
    
    @IBOutlet var month: UIView!
    
    @IBOutlet var year: UIView!
    
    
    // Our custom view from the XIB file
    
    func xibSetup() {
        view = loadViewFromNib()
        
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

    
    
    
    
    

}
