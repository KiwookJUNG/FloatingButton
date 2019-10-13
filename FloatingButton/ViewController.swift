//
//  ViewController.swift
//  FloatingButton
//
//  Created by 정기욱 on 2019/10/11.
//  Copyright © 2019 kiwook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showPopup",
            let floatingVC = segue.destination as? FloatingButtonViewController
        {
            floatingVC.modalPresentationStyle = .overCurrentContext
        }
    }

}

