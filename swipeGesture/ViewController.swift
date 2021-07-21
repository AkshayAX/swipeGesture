//
//  ViewController.swift
//  swipeGesture
//
//  Created by Akshaya Kumar N on 6/18/19.
//  Copyright © 2019 Akshaya Kumar N. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let  leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(swiped(sender:)))
        leftSwipe.direction = .left
        view.addGestureRecognizer(leftSwipe)
        
        
        
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(swiped(sender:)))
        
        rightSwipe.direction = .right
        view.addGestureRecognizer(rightSwipe)
        // Do any additional setup after loading the view, typically from a nib.
    }
  @objc  func swiped(sender:UISwipeGestureRecognizer)
    {
        if sender.direction == .left
        {
            performSegue(withIdentifier: "left", sender: nil)
        }
        else if sender.direction == .right
        {
            performSegue(withIdentifier: "right", sender: nil)
        }
        
    }

}

