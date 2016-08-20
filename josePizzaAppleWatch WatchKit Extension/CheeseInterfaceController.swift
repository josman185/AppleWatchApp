//
//  QuesoInterfaceController.swift
//  josePizzaAppleWatch
//
//  Created by jose on 7/19/16.
//  Copyright © 2016 myCompany. All rights reserved.
//

import WatchKit
import Foundation


class CheeseInterfaceController: WKInterfaceController {
    
    var currentSizePizza :String!
    var currentDoughPizza:String!
    
    @IBOutlet var cheesesPicker: WKInterfacePicker!
    
    var cheesesPickerData = ["Mozzarella", "Cheddar", "Parmesan", "No Cheese"]
    
    var currentCheese:String = ""

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        self.cheesesPicker.focus()
        
        let myContext = context as! DoughValue
        self.currentSizePizza = String(myContext.sizePizza)
        self.currentDoughPizza = String(myContext.doughDescription)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        
        
        var pickerItems: [WKPickerItem] = []
        for i in cheesesPickerData {
            let item = WKPickerItem()
            item.title = "\(i)"
            pickerItems.append(item)
        }
        self.cheesesPicker.setItems(pickerItems)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func pickerBtnAction(value: Int) {
        self.currentCheese = self.cheesesPickerData[value]
    }
    
    @IBAction func btnChesseOK() {
        let myContext = ValueDoughCheesePizza(cheese: self.currentCheese, dough: self.currentDoughPizza, pizza: self.currentSizePizza)
        pushControllerWithName("ingredientsInterfaceCtrl", context: myContext)
    }
    
     override func pickerDidFocus(picker: WKInterfacePicker) {
        self.cheesesPicker = picker
    }
}
