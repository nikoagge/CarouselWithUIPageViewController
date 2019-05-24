//
//  ProjectorPageViewController.swift
//  CarouselWithUIPageViewController
//
//  Created by Nikos  on 26/10/2018.
//  Copyright © 2018 NAPPS. All rights reserved.
//

import UIKit


class ProjectorPageViewController: UIPageViewController, UIPageViewControllerDataSource {

    
    let imageNames = ["mario", "tiger", "yoshi"]
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let frameViewController = FrameViewController()
        frameViewController.customView.imageName = imageNames.first
        
        let viewControllers = [frameViewController]
        setViewControllers(viewControllers, direction: .forward, animated: true, completion: nil)
        
        //Important property that we have to set. dataSource is the object that provides viewControllers.
        dataSource = self
    }
    
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        let currentImageName = (viewController as! FrameViewController).customView.imageName
        let currentIndex = imageNames.firstIndex(of: currentImageName!)
        
        if currentIndex! > 0 {
            
            let frameViewController = FrameViewController()
            frameViewController.customView.imageName = imageNames[currentIndex! - 1]
            
            return frameViewController
        }
        
        return nil
    }
    
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        let currentImageName = (viewController as! FrameViewController).customView.imageName
        let currentIndex = imageNames.firstIndex(of: currentImageName!)
        
        if currentIndex! < imageNames.count - 1 {
            
            let frameViewController = FrameViewController()
            frameViewController.customView.imageName = imageNames[currentIndex! + 1]
            
            return frameViewController
        }
        
        return nil
    }
}
