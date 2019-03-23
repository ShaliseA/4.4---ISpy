//
//  ViewController.swift
//  ISpy
//
//  Created by Shalise Ayromloo on 3/22/19.
//  Copyright © 2019 Shalise Ayromloo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var imageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        updateZoomFor(size: view.bounds.size)
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
    
    func updateZoomFor(size: CGSize) {
        let widthScale = size.width / imageView.bounds.width
        let heightScale = size.height / imageView.bounds.height
        let scale = min(widthScale, heightScale)
        scrollView.minimumZoomScale = scale
//        scrollView.minimumZoomScale = 1.0
//        scrollView.maximumZoomScale = 5.0
//        
//        scrollView.contentSize = .init(width: 2000, height = 2000)
        
    }


}

