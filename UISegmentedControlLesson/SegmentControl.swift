//
//  SegmentControl.swift
//  UISegmentedControlLesson
//
//  Created by UrataHiroki on 2021/07/25.
//

import Foundation
import UIKit

class SegmentControl{
    
    var uiSegmentControl = UISegmentedControl()
    var segmentContentsArray = ["0","1","2"]
    
}


extension SegmentControl{
    
    func createSegmentControl(targetView:UIView){
        
        uiSegmentControl = UISegmentedControl(items: [])
        
        for count in 0...segmentContentsArray.count - 1{
        
            uiSegmentControl.insertSegment(withTitle: segmentContentsArray[count], at: count, animated: true)
            
        }
        
        uiSegmentControl.frame.origin = CGPoint(x: 100, y: 60)
        
        targetView.addSubview(uiSegmentControl)
        
    }
    
}
