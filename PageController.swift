//
//  Page.swift
//  PageController
//
//  Created by MILLER, Maximilian on 05.11.21.
//

import Foundation
import UIKit

class ViewController1: UIViewController {
    
    private let scrollView = UIScrollView()
    
    private let pageControl: UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.numberOfPages = 3
        pageControl.backgroundColor = .systemCyan
        return pageControl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.backgroundColor = .red
        view.addSubview(scrollView)
        view.addSubview(pageControl)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        pageControl.frame = CGRect(x: 10, y: view.frame.size.height-100, width: view.frame.size.width-20, height: 70)
    
        scrollView.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height-100)
        
        if scrollView.subviews.count == 2 {
            configureScrollView()
        }
        
    }
    
    private func configureScrollView() {
        scrollView.contentSize = CGSize(width: view.frame.size.width*5, height: scrollView.frame.size.height)
        scrollView.isPagingEnabled = true
        let colors: [UIColor] = [
            .systemRed,
            .systemBlue,
            .systemMint
        ]
        for x in 0..<3  {
            let page = UIView(frame: CGRect(x: CGFloat(x)*view.frame.size.width, y: 0,
                                            width: view.frame.size.width, height: scrollView.frame.size.height))
            page.backgroundColor = colors[x]
            scrollView.addSubview(page)
        }
    }
}
