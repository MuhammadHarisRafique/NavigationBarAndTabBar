//
//  singleColunmView.swift
//  tabBar
//
//  Created by Mac on 4/4/16.
//  Copyright © 2016 Mac. All rights reserved.
//

import UIKit

class SingleColunmView: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate
    
{
    @IBOutlet weak var txtViewOutlet: UITextField!
    @IBOutlet weak var btnSelectOutlet: UIButton!
    @IBOutlet weak var pickerViewOutlet: UIPickerView!
    var pickerViewArray = ["Afganistan", "West Indies", "India", "Australia", "Pakistan", "Sri Lanka", "Bangladesh","South Africa" ]
    
    override func viewDidLoad()
    
    
    {
        super.viewDidLoad()
        self.btnSelectOutlet.layer.cornerRadius = 5
        self.txtViewOutlet.text = pickerViewArray[pickerViewOutlet.selectedRowInComponent(0)]
        
    }
    
    override func didReceiveMemoryWarning()
        
    {
        super.didReceiveMemoryWarning()
        
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
        
    {
        
        return pickerViewArray.count
    }
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerViewArray[row]
    }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
         self.txtViewOutlet.text = pickerViewArray[pickerViewOutlet.selectedRowInComponent(0)]
        
    }
    
    
    @IBAction func btnSelectAction(sender: AnyObject)
        
    {
        let pickRowValue = pickerViewArray[pickerViewOutlet.selectedRowInComponent(0)]
        let message = "\(pickRowValue) have Won World Cup 2016 "
        let alert = UIAlertController(title: "World Cup 2016", message: message, preferredStyle: .Alert)
        let action = UIAlertAction(title: "OK", style: .Default, handler: nil)
        alert.addAction(action)
          presentViewController(alert, animated: true, completion: nil)
        
    }
    
    
    
}
