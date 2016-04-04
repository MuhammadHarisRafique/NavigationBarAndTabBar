//
//  DoubleComponents.swift
//  tabBar
//
//  Created by Mac on 4/4/16.
//  Copyright © 2016 Mac. All rights reserved.
//

import UIKit

class DoubleComponents: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource
{
    
    @IBOutlet weak var double: UIPickerView!

    @IBOutlet weak var txtViewCountryOutlet: UITextField!
    @IBOutlet weak var doubleComponentsPickrOulet: UIPickerView!
   
    @IBOutlet weak var txtViewCapitalOutlet: UITextField!
    @IBOutlet weak var btnSubmitOutlet: UIButton!

    var pickerViewArray = ["Afganistan", "West Indies", "India", "Australia", "Pakistan", "Sri Lanka", "Bangladesh","South Africa" ]
    var pickerViewArray2 = [" Kabul ", "Jamaica", "Mumbai", "Melbourn", "Islamabad", "Colombo", "Dhaka","Cape Town" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.btnSubmitOutlet.layer.cornerRadius = 5

            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerViewArray.count
    }
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 2
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
       if component == 0
       {
        return pickerViewArray[row]
        }
       else{
     return pickerViewArray2[row]
        }
    }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0
        {
        
        self.txtViewCountryOutlet.text = pickerViewArray[doubleComponentsPickrOulet.selectedRowInComponent(0)]
        }
        else if component == 1
        {
        self.txtViewCapitalOutlet.text = pickerViewArray2[doubleComponentsPickrOulet.selectedRowInComponent(1)]
        }
    }
    
    @IBAction func btnSubmitAction(sender: AnyObject)
    
    {
        if txtViewCapitalOutlet != "" && txtViewCountryOutlet != ""
            
        {
         
        }
        
    }
    
    
}

