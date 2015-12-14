//
//  ShowResult.swift
//  Fibonacci
//
//  Created by Amy Chow on 14/12/2015.
//  Copyright © 2015 Amy Chow. All rights reserved.
//

import UIKit

class ShowResult: UIViewController {
    
    var inputNumber :Int?
    
    @IBOutlet weak var userInput: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        userInput.text = String(inputNumber!)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}
