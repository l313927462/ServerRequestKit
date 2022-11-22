//
//  ViewController.swift
//  ServerRequestKit
//
//  Created by 313927462@qq.com on 11/17/2022.
//  Copyright (c) 2022 313927462@qq.com. All rights reserved.
//

import UIKit
import ServerRequestKit



class Atype: BaseRequestModel {
    var cc = "RTRTE"
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let c = Atype()
        print( c.queryParams())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}



