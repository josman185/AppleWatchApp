//
//  FirstStepSize.swift
//  josePizzaAppleWatch
//
//  Created by MCS on 7/19/16.
//  Copyright © 2016 myCompany. All rights reserved.
//

import WatchKit
import Foundation

class FirstStepSize: WKInterfaceController {
    
    @IBOutlet var sizePickerBtn: WKInterfacePicker!
 
    var sizePickerBtnData = ["Small","Median","Big"]
    
    var currentSize:String = ""
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        var pickerItems: [WKPickerItem] = []
        for i in sizePickerBtnData {
            let item = WKPickerItem()
            item.title = "\(i)"
            pickerItems.append(item)
        }
        self.sizePickerBtn.setItems(pickerItems)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func btnOKtamano() {
        let myContext = SizeValue(sDescription: self.currentSize)
        pushControllerWithName("doughInterfaceCtrl", context: myContext)
    }
    
    @IBAction func pickerActionBtn(value: Int) {
        self.currentSize = self.sizePickerBtnData[value]
    }
    
}
