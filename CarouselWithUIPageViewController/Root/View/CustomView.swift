//
//  CustomView.swift
//  CarouselWithUIPageViewController
//
//  Created by Nikos  on 26/10/2018.
//  Copyright © 2018 NAPPS. All rights reserved.
//

import UIKit

class CustomView: UIView {
    
    
    var imageName: String? {
        
        didSet {
            
            imageView.image = UIImage(named: imageName!)
        }
    }
    
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        setupViews()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
    }
    
    
    let imageView: UIImageView = {
        
        let imageview = UIImageView()
        imageview.contentMode = .scaleAspectFit
        imageview.backgroundColor = .black
        imageview.translatesAutoresizingMaskIntoConstraints = false
        
        return imageview
    }()
    
    
    func setupViews() {
        
        addSubview(imageView)
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0": imageView]))
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0": imageView]))
    }
}
