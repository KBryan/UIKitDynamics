//
//  ViewController.swift
//  Flappy
//
//  Created by KBryan on 2015-11-21.
//  Copyright © 2015 KBryan. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    var animator:UIDynamicAnimator!
    var gravity:UIGravityBehavior!
    var collision:UICollisionBehavior!
    var bounce:UIDynamicBehavior!
    
    
    @IBAction func buttonPressed(sender: AnyObject) {
        animator = UIDynamicAnimator(referenceView: self.view)
        gravity = UIGravityBehavior(items: [label1,label2,label3])
        animator.addBehavior(gravity)
        
        collision = UICollisionBehavior(items: [label1,label2,label3])
        collision.translatesReferenceBoundsIntoBoundary = true
        animator.addBehavior(collision)
    }
    @IBOutlet var label3: UILabel!

    @IBOutlet var label2: UILabel!
    @IBOutlet var label1: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

