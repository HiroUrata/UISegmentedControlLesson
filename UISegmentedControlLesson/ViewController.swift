//
//  ViewController.swift
//  UISegmentedControlLesson
//
//  Created by UrataHiroki on 2021/07/25.
//

import UIKit

class ViewController: UIViewController {

    let segmentControl = SegmentControl()
    
    var segmentCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        segmentControl.createSegmentControl(targetView: self.view)
        
    }

    @IBAction func plusSegmentControl(_ sender: Any) {
        
        segmentCount += 1
        
        if segmentControl.segmentContentsArray.allSatisfy({Int($0)! < segmentCount}) == true{
            
            segmentControl.segmentContentsArray.append(String(segmentCount))
            
            segmentControl.uiSegmentControl.insertSegment(withTitle: String(segmentCount), at: segmentCount , animated: true)
            
            segmentControl.uiSegmentControl.frame = CGRect(x: segmentControl.uiSegmentControl.bounds.minX, y: segmentControl.uiSegmentControl.bounds.minY + 100, width: segmentControl.uiSegmentControl.frame.width + 35, height: segmentControl.uiSegmentControl.frame.size.height)
            
            print(segmentControl.segmentContentsArray)
            
        }else{
            
            print(segmentControl.segmentContentsArray)
            
        }
        print(segmentCount)
        print(segmentControl.segmentContentsArray[segmentCount])
    }
    
    @IBAction func minusSegment(_ sender: Any) {
        
        if segmentControl.segmentContentsArray[segmentCount] == String(segmentCount){
            
            segmentControl.uiSegmentControl.removeSegment(at: segmentCount, animated: true)
            
            segmentControl.segmentContentsArray.remove(at: segmentCount)
            print(segmentControl.segmentContentsArray)
            
            segmentCount -= 1
                        
            segmentControl.uiSegmentControl.frame = CGRect(x: segmentControl.uiSegmentControl.bounds.minX, y: segmentControl.uiSegmentControl.bounds.minY + 100, width: segmentControl.uiSegmentControl.frame.width - 35, height: segmentControl.uiSegmentControl.frame.size.height)
        }
        
    }
}

