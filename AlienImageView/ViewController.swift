//
//  ViewController.swift
//  AlienImageView
//
//  Created by D7703_04 on 2019. 3. 28..
//  Copyright © 2019년 test. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var alienImageViewer: UIImageView!
    @IBOutlet weak var countLabel: UILabel!
    
    var count = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        alienImageViewer.image = UIImage(named: "frame1.png")
        countLabel.text = "frame\(count).png"
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        count+=1
        
        if(count>5) {
            count = 1
        }
        alienImageViewer.image = UIImage(named: "frame\(count).png")
        countLabel.text = "frame\(count).png"
    }
    
}

