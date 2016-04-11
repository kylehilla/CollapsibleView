//
//  ViewController.swift
//  CollapsibleView
//
//  Created by Kyle Hilla on 4/10/16.
//  Copyright © 2016 Skunk Tank LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var gripView: UIView!
    @IBOutlet weak var testView: UIView!
    @IBOutlet weak var testViewHeight: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.gripView.layer.cornerRadius = 2.0
        self.gripView.hidden = true
        
        let swipeUpGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.handleSwipeUpGestureRecognizer(_:)))
        swipeUpGestureRecognizer.direction = UISwipeGestureRecognizerDirection.Up
        testView.addGestureRecognizer(swipeUpGestureRecognizer)
        
        let swipeDownGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.handleSwipeDownGestureRecognizer(_:)))
        swipeDownGestureRecognizer.direction = UISwipeGestureRecognizerDirection.Down
        testView.addGestureRecognizer(swipeDownGestureRecognizer)
    }
    
    func handleSwipeUpGestureRecognizer(swipeGestureRecognizer: UISwipeGestureRecognizer) {
        self.testViewHeight.constant = 10
        self.gripView.hidden = false
        UIView.animateWithDuration( 0.1, animations: {
            self.testView.layoutIfNeeded()
        })
    }
    
    func handleSwipeDownGestureRecognizer(swipeGestureRecognizer: UISwipeGestureRecognizer) {
        self.testViewHeight.constant = 44
        self.gripView.hidden = true
        UIView.animateWithDuration( 0.1, animations: {
            self.testView.layoutIfNeeded()
        })
    }
}

