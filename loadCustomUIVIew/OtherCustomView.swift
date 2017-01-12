//
//  OtherCustomView.swift
//  loadCustomUIVIew
//
//  Created by Max on 12.01.17.
//  Copyright © 2017 I Like To Make Apps. All rights reserved.
//

import UIKit

class OtherCustomView: UIView {
        
    @IBOutlet weak var otherLabel: UILabel!

    private var customView: UIView? = nil
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadFromXib()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadFromXib()
    }
    
    private func loadFromXib() {
        customView = Bundle(for: OtherCustomView.self).loadNibNamed("OtherCustomView", owner: self, options: nil)?.first as! UIView?
        if let v = customView {
            if frame == CGRect.zero {
                frame = v.bounds
            }
            customView?.frame = bounds
            addSubview(v)
        }
    }

}
