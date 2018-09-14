//
//  ViewController.swift
//  autoLayout2
//
//  Created by Jacob Paul Hassler on 9/12/18.
//  Copyright © 2018 jphyr4. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var label:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(red: CGFloat(40/255), green: CGFloat( 50/255), blue: CGFloat(60/255), alpha: 1)
        
        label = UILabel()
        label.text = "Hi!"
        label.textColor = UIColor.white
        label.backgroundColor = UIColor.red
        label.textAlignment = NSTextAlignment.center
        label.font = UIFont(name: "Copperplate-Bold", size: 32)
        
        
        self.view.addSubview(label)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        let labelCenterXConstraint = NSLayoutConstraint(item: label, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.centerX, multiplier: 1, constant: 0)
        
        let labelCenteryConstraint = NSLayoutConstraint(item: label, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.centerY, multiplier: 1, constant: 0)
        
        let labelCenterHeightConstraint = NSLayoutConstraint(item: label, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier: 1, constant: 0)
        
        let labelWidthConstraint = NSLayoutConstraint(item: label, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.notAnAttribute, multiplier: 1, constant: 300)
        
        self.view.addConstraints([labelCenterXConstraint,labelCenteryConstraint,labelWidthConstraint,labelCenterHeightConstraint])
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

