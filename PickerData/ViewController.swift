//
//  ViewController.swift
//  PickerData
//
//  Created by Will Wyatt on 5/23/15.
//  Copyright (c) 2015 Will Wyatt. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let moodArray = ["Sleepy","Angry","Ecstatic","Cranky","Horny","Sarcastic","Moody","Content","Optimistic","Overjoyed","Giddy","Indifferent","Relaxed","Cynical"]
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //  how many pieces of data are in our component
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return moodArray.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return moodArray[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        var newBackgroundColor : UIColor
        
        switch row {
        case 0,2,3,7:
            newBackgroundColor = UIColor.yellowColor()
        case 1,4:
            newBackgroundColor = UIColor.redColor()
        case 6:
            newBackgroundColor = UIColor.grayColor()
        case 8,10:
            newBackgroundColor = UIColor.greenColor()
        default:
            newBackgroundColor = UIColor(red: 135/255, green: 214/255, blue: 1.0, alpha: 1.0)
        }
        
        self.view.backgroundColor = newBackgroundColor
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

