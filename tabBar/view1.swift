//
//  view1.swift
//  tabBar
//
//  Created by Mac on 4/4/16.
//  Copyright © 2016 Mac. All rights reserved.
//

import UIKit

class view1: UIViewController {

    @IBOutlet weak var btnShowOutlet: UIButton!
    @IBOutlet weak var datePickerOutlet: UIDatePicker!
    
    
    
    
    override func viewDidLoad()
        
    {
        super.viewDidLoad()
       self.btnShowOutlet.layer.cornerRadius = 5
        
    }


    override func didReceiveMemoryWarning()
        
    {
        super.didReceiveMemoryWarning()
      
    }
    
    @IBAction func btnShowAction(sender: AnyObject)
    
    {
        let date = datePickerOutlet.date
        let message = "The Date And Time u selected id \(date)"
        let alert = UIAlertController(title: "Date and Time", message: message , preferredStyle: .Alert)
      
        let action = UIAlertAction(
            title: "That's so true!",
            style: .Default,
            handler: nil)
        alert.addAction(action)
        presentViewController(alert, animated: true, completion: nil)
        
    }
}
