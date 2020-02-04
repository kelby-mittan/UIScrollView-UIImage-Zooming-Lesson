//
//  ViewController.swift
//  UIScrollView-UIImage-Zooming
//
//  Created by Kelby Mittan on 2/3/20.
//  Copyright © 2020 Kelby Mittan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var subwayMap: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        
        
        scrollView.maximumZoomScale = 5.0
    }

    // provide a maximum zoom scale of greater than 1 is the defaul value, if not set won't zoom
    
}


extension ViewController: UIScrollViewDelegate {
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return subwayMap
    }
}
