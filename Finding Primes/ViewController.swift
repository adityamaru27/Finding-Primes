//
//  ViewController.swift
//  Finding Primes
//
//  Created by Aditya Maru on 2016-02-16.
//  Copyright © 2016 Aditya Maru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var screenView: UILabel!
    @IBOutlet weak var entry: UITextField!
    
    @IBAction func buttonInput(sender: AnyObject)
    {
        var counter = 2;
        var isprime = true;
        if let number = Int(entry.text!)
        {
            if number == 1
            {
                screenView.text = "Neither prime nor composite!"
            }
            else if number == 2
            {
                screenView.text = "That is a prime!"
            }
            else
            {
                while(counter < number)
                {
                    if number % counter == 0
                    {
                        isprime = false;
                        break;
                    }
                    else
                    {
                        isprime = true;
                        ++counter;
                    }
                }
            
            }
        
            if isprime
            {
                screenView.text = "That is prime!"
            }
            else
            {
                screenView.text = "That is not a prime!"
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

