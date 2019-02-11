//
//  ViewController.swift
//  DuckSizer
//
//  Created by Joshua Viera on 2/11/19.
//  Copyright © 2019 Joshua Viera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cat: UIImageView!
    private var animator: UIViewPropertyAnimator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animator = UIViewPropertyAnimator(duration: 1.0, curve: .easeInOut, animations: {
            self.cat.transform = CGAffineTransform(scaleX: 10.0, y: 10.0)
        })
    }

    @IBAction func sliderChanged(_ sender: UISlider) {
        animator.fractionComplete = CGFloat(sender.value)
    }
}

