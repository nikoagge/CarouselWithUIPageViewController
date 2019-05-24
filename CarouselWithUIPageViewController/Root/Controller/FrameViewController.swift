//
//  FrameViewController.swift
//  CarouselWithUIPageViewController
//
//  Created by Nikos  on 26/10/2018.
//  Copyright © 2018 NAPPS. All rights reserved.
//

import UIKit

class FrameViewController: UIViewController {

    
    var customView = CustomView()
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        super.view = customView
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
