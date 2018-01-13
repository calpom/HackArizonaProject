//
//  ViewController.swift
//  HackArizonaProject
//
//  Created by Kaleb Markos on 1/12/18.
//  Copyright © 2018 CalebGrantCody. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    static var viewCount: Int {
        get {
            return UserDefaults.standard.integer(forKey: "viewCount")
        }
        set {
            UserDefaults.standard.set(newValue, forKey: "viewCount")
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if (ViewController.viewCount >= 1) {
            // DEBUG * * * *
            print("viewCount is greater than or equal to 1")
            
            // switch screen to screen w table view of pills
            let tableOfMedCells = ViewController(nibName: "NibName", bundle: nil);
            self.present(tableOfMedCells, animated: true, completion: nil);
            
            
            
        } else {
            print("viewCount is less than 1")
        }
        
        
        
        
        // increment viewCount by 1
        ViewController.viewCount += 1;
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }


}

