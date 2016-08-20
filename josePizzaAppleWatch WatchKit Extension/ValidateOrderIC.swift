//
//  ValidateOrderIC.swift
//  josePizzaAppleWatch
//
//  Created by jose on 7/20/16.
//  Copyright © 2016 myCompany. All rights reserved.
//

import WatchKit
import Foundation


class ValidateOrderIC: WKInterfaceController {
    
    var currentSizePizza :String!
    var currentDoughPizza:String!
    var currentCheesePizza:String!
    var currentIngredientsPizza:[String] = []
    
    @IBOutlet var sizePizzaLbl: WKInterfaceLabel!
    @IBOutlet var doughPizzaLbl: WKInterfaceLabel!
    @IBOutlet var cheesePizzaLbl: WKInterfaceLabel!
    @IBOutlet var ingredientsPizzaLbl: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let myContext = context as! ValueDoughCheesePizzaIngredients
        self.currentSizePizza = String(myContext.pizzaDescription)
        self.currentDoughPizza = String(myContext.doughDescription)
        self.currentCheesePizza = String(myContext.cheeseDescription)
        self.currentIngredientsPizza = [String](myContext.ingredientsArrayDesc)
        
        self.sizePizzaLbl.setText(self.currentSizePizza)
        self.doughPizzaLbl.setText(self.currentDoughPizza)
        self.cheesePizzaLbl.setText(self.currentCheesePizza)
        self.ingredientsPizzaLbl.setText(self.currentIngredientsPizza.joinWithSeparator(","))
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func btnValidateOrder() {
        if ((self.currentIngredientsPizza.count) == 0) || ((self.currentIngredientsPizza.count) > 5){
            let message = "you have to choose from 1 to 5 ingredients, press: < ,to turn back"
            let myContext = ValidateOrderData(messageScreen: message)
            pushControllerWithName("warningMessageIdentyfier", context: myContext)
    
        } else if ((self.currentSizePizza) == "") || ((self.currentDoughPizza) == "") || ((self.currentCheesePizza) == ""){
            let message = "Incomplete Order, press: < ,to turn back"
            let myContext = ValidateOrderData(messageScreen: message)
            pushControllerWithName("warningMessageIdentyfier", context: myContext)
        } else {
            let message = "Enjoy your Pizza!"
            let myContext = ValidateOrderData(messageScreen: message)
            pushControllerWithName("pizzaOKIdentifier", context: myContext)
        }
        
        
    }

}
