//
//  ViewController.swift
//  loadCustomUIVIew
//
//  Created by Max on 12.01.17.
//  Copyright © 2017 I Like To Make Apps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let theView = OtherCustomView()
        view.addSubview(theView)
        
        let myView = OtherCustomView(frame: CGRect(x: 0, y: 160, width: 160, height: 160))
        view.addSubview(myView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

