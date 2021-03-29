//
//  ViewController.swift
//  21 game
//
//  Created by Никита on 29.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var circleView1: CircleView!
    @IBOutlet weak var circleView2: CircleView!
    @IBOutlet weak var circleView3: CircleView!
    @IBOutlet weak var circleView4: CircleView!
    @IBOutlet weak var circleView5: CircleView!
    @IBOutlet weak var circleView6: CircleView!
    @IBOutlet weak var circleView7: CircleView!
    
    
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func panAction1(_ gesture: UIPanGestureRecognizer) {
        
        actionDesciption(gesture)
        print(circleView1.center.x - circleView2.center.x)
        
       /* let circleViewX = circleView1.frame.minX
        let circleViewY = circleView1.frame.minY
        let circleViewH = circleView1.frame.height
        let circleViewW = circleView1.frame.width
        
        if circleView1.center.x - circleView2.center.x < 120 {
            circleView2.isHidden = true
            circleView1.frame = CGRect(x: circleViewX,
                                       y: circleViewY,
                                       width: circleViewW + 10,
                                       height: circleViewW + 10)
        }
        gesture.setTranslation(.zero, in: view)
        */

    }
    
    @IBAction func panAction2(_ gesture: UIPanGestureRecognizer) {
        
        actionDesciption(gesture)

    }
    
    @IBAction func panAction3(_ gesture: UIPanGestureRecognizer) {
        
        actionDesciption(gesture)

    }
    
    @IBAction func panAction4(_ gesture: UIPanGestureRecognizer) {
        
        actionDesciption(gesture)

    }
    
    @IBAction func panAction5(_ gesture: UIPanGestureRecognizer) {
        
        actionDesciption(gesture)

    }
    
    @IBAction func panAction6(_ gesture: UIPanGestureRecognizer) {
        
        actionDesciption(gesture)

    }
    
    @IBAction func panAction7(_ gesture: UIPanGestureRecognizer) {
        actionDesciption(gesture)
    }
    
    func actionDesciption(_ gesture: UIPanGestureRecognizer) {
        
        let circlesArray: [CircleView]  = [
        circleView1,
        circleView2,
        circleView3,
        circleView4,
        circleView5,
        circleView6,
        circleView7
    ]
        
        
        
        for circle1 in circlesArray {
            for circle2 in circlesArray {
                let l = (pow(pow((circle1.center.x - circle2.center.x),2) +                 pow((circle1.center.y - circle2.center.y),2),0.5))
                if (!circle1.isHidden && !circle2.isHidden && circle1 != circle2 && l <= (circle1.frame.width / 2) + (circle2.frame.width / 2)) {
                    circle1.isHidden = true
                    circle2.frame = CGRect(x: circle2.center.x,
                                           y: circle2.center.y,
                                           width: circle2.frame.width + 20, height: circle2.frame.width + 20)

            }
        }
        }
        
     
        
        let gestureTranslation = gesture.translation(in: view)
        
        guard let gestureView = gesture.view else {
            return
        }
        
        gestureView.center = CGPoint(
            x: gestureView.center.x + gestureTranslation.x,
            y: gestureView.center.y + gestureTranslation.y
            )
        
        gesture.setTranslation(.zero, in: view)
        
        guard gesture.state == .ended else {
            return
        }
        
        
    }
    
}

