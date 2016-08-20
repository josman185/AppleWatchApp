//
//  PizzaOKInterfaceCtrl.swift
//  josePizzaAppleWatch
//
//  Created by jose on 7/21/16.
//  Copyright © 2016 myCompany. All rights reserved.
//

import WatchKit
import Foundation


class PizzaOKInterfaceCtrl: WKInterfaceController {
    
    @IBOutlet var imagePizza: WKInterfaceImage!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func pizzaOkBtn() {
        popToRootController()
    }

}
