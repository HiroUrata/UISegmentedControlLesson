//
//  ViewController.swift
//  UISegmentedControlLesson
//
//  Created by UrataHiroki on 2021/07/25.
//

import UIKit

class ViewController: UIViewController {

    let segmentControl = SegmentControl()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        segmentControl.createSegmentControl(targetView: self.view)
        
    }


}

