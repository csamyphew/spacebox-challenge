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
    @IBOutlet weak var answer: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userInput.text = String(inputNumber!)
        answer.text = evaluate(inputNumber!)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func evaluate(input: Int) -> String {
        var result:[Int] = []
        var output:String = ""
        for (var i = 1 ; i <= input ; i++)
        {
            if (i < 3){
                result.append(1)
            }
            else {
                //i start from 1 whoel array index start from 0
                result.append(result[i-3] + result[i-2])
            }
            output = "\(output)    \(result[i-1])"
        }
        return output
    }
}
