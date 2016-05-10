//
//  MainPageBrainMan.swift
//  kidsWorkOut
//
//  Created by wusuchen on 2016/4/28.
//  Copyright © 2016年 lakst. All rights reserved.
//

import UIKit

@IBDesignable class MainPageBrainMan: UIView {

    
    var nibName: String = "MainPageBrainMan"
    
    var view: UIView!
    
    @IBOutlet var brain1: UIView!
    
    @IBOutlet var brain2: UIView!

    @IBOutlet var brain3: UIView!

    @IBOutlet var brain4: UIView!

    @IBOutlet var brain5: UIView!

    @IBOutlet var brain6: UIView!

    @IBOutlet var brain7: UIView!

    
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

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
