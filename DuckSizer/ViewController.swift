//
//  ViewController.swift
//  DuckSizer
//
//  Created by Joshua Viera on 2/11/19.
//  Copyright © 2019 Joshua Viera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cat: UIButton!
    @IBOutlet weak var duck: UIImageView!
    
    private var animator: UIViewPropertyAnimator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animator = UIViewPropertyAnimator(duration: 1.0, curve: .easeInOut, animations: {
            self.duck.transform = CGAffineTransform(scaleX: 10.0, y: 10.0)
        })
    }

    @IBAction func sliderChanged(_ sender: UISlider) {
        animator.fractionComplete = CGFloat(sender.value)
    }
    
    @IBAction func imageTransition(_ sender: UIButton) {
        
        if cat.imageView?.image == UIImage(named: "cat"){
            UIView.transition(with: cat, duration: 1.0, options: [.transitionFlipFromRight], animations: {
                self.cat.setImage(UIImage(named: "duck"), for: .normal)
            })
        } else {
            UIView.transition(with: cat, duration: 1.0, options: [.transitionFlipFromRight], animations: {
                self.cat.setImage(UIImage(named: "cat"), for: .normal)
            })
        }
    }
}

