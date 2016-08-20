//
//  MasaInterfaceController.swift
//  josePizzaAppleWatch
//
//  Created by jose on 7/19/16.
//  Copyright © 2016 myCompany. All rights reserved.
//

import WatchKit
import Foundation


class DoughInterfaceCtrl: WKInterfaceController {
    
    var currentSizePizza : String!
    
    @IBOutlet var doughPicker: WKInterfacePicker!
    
    var doughPickerData = ["Thin", "Crunchy", "Gross"]
    
    var currentDough:String = ""

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        // Configure interface objects here.
        
        let myContext = context as! SizeValue
        self.currentSizePizza = String(myContext.sizeDescription)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        var pickerItems: [WKPickerItem] = []
        for i in doughPickerData {
            let item = WKPickerItem()
            item.title = "\(i)"
            pickerItems.append(item)
        }
        self.doughPicker.setItems(pickerItems)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func pickerBtnAction(value: Int) {
        self.currentDough = self.doughPickerData[value]
    }
    
    @IBAction func btnDoughOK() {
        let myContext = DoughValue(doughDesc: self.currentDough, sizePizza: self.currentSizePizza)
        pushControllerWithName("cheeseInterfaceCtrl", context: myContext)
    }
    

}
