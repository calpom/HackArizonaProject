//
//  ViewController.swift
//  HackArizonaProject
//
//  Created by Kaleb Markos on 1/12/18.
//  Copyright © 2018 CalebGrantCody. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    static var viewCount = 0;

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if (ViewController.viewCount >= 1) {
            // switch screen to screen w table view of pills
            let tableOfMedCells = ViewController(nibName: "NibName", bundle: nil);
            self.present(tableOfMedCells, animated: true, completion: nil);
            
        }
        
        
        
        
        // increment viewCount by 1
        ViewController.viewCount += 1;
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }


}

