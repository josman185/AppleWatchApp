//
//  WarningMessageIC.swift
//  josePizzaAppleWatch
//
//  Created by MCS on 7/21/16.
//  Copyright © 2016 myCompany. All rights reserved.
//

import WatchKit
import Foundation


class WarningMessageIC: WKInterfaceController {

    var warningMessage : String!
    
    @IBOutlet var messageLbl: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let myContext = context as! ValidateOrderData
        self.warningMessage = String(myContext.message)
        
        self.messageLbl.setText(self.warningMessage)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
