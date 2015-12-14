//
//  ViewController.swift
//  Fibonacci
//
//  Created by Amy Chow on 12/12/2015.
//  Copyright © 2015 Amy Chow. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number : Int = 0
    
    @IBOutlet weak var input: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func enter() {
        if let value = Int(input.text!)
        {
            if value > 0 {
                number = value
                input.text = " "
            }
            else{
                let alert = UIAlertController(title:"Input Error", message: "This is not a positive interger",preferredStyle: .Alert)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
                self.presentViewController(alert, animated: true, completion: nil)
            }
        }
        else
        {
            let alert = UIAlertController(title:"Input Error", message: "This is not an interger",preferredStyle: .Alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
        }
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let resultScene = segue.destinationViewController as! ShowResult
        resultScene.inputNumber = (number)
    }
}


