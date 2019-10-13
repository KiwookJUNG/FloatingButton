//
//  FloatingButtonViewController.swift
//  FloatingButton
//
//  Created by 정기욱 on 2019/10/13.
//  Copyright © 2019 kiwook. All rights reserved.
//

import UIKit

class FloatingButtonViewController: UIViewController {

    @IBOutlet weak var btn1CenterY: NSLayoutConstraint!
    @IBOutlet weak var btn2CenterY: NSLayoutConstraint!
    @IBOutlet weak var btn3CenterY: NSLayoutConstraint!
    
    @IBAction func dimissFloating(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
                    self.btn1CenterY.constant = 0
                    self.btn2CenterY.constant = 0
                    self.btn3CenterY.constant = 0
                
            self.view.bringSubviewToFront(sender)
                    self.view.layoutIfNeeded()
        }) { (completion) in
            // 끝날 때
            self.dismiss(animated: true, completion: nil)
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        btn1CenterY.constant = 0
        btn2CenterY.constant = 0
        btn3CenterY.constant = 0
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
//        UIView.animate(withDuration: 1) {
//
//            self.btn1CenterY.constant = 80
//            self.btn2CenterY.constant = 160
//            self.btn3CenterY.constant = 240
//
//            self.view.layoutIfNeeded()
//        }
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
            self.btn1CenterY.constant = 80
                      self.btn2CenterY.constant = 160
                      self.btn3CenterY.constant = 240
                      
                      self.view.layoutIfNeeded()
        }) { (completion) in
            // 끝날 때
            
        }
    }

    

}
