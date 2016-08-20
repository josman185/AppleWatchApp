//
//  IngredientsInterfaceController.swift
//  josePizzaAppleWatch
//
//  Created by jose on 7/19/16.
//  Copyright © 2016 myCompany. All rights reserved.
//

import WatchKit
import Foundation


class IngredientsInterfaceController: WKInterfaceController {

    var currentSizePizza :String!
    var currentDoughPizza:String!
    var currentCheesePizza:String!
    
    var ingredientsDict = [String: String]()
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        let myContext = context as! ValueDoughCheesePizza
        self.currentSizePizza = String(myContext.pizzaDescription)
        self.currentDoughPizza = String(myContext.doughDescription)
        self.currentCheesePizza = String(myContext.cheeseDescription)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func jamonSwitchBtn(value: Bool) {
        if (value){
            ingredientsDict["Ham"] = "Ham"
        }else{
            ingredientsDict.removeValueForKey("Ham")
        }
    }
    @IBAction func peperoniSwitchBtn(value: Bool) {
        if (value == true){
            ingredientsDict["Pepperoni"] = "Pepperoni"
        }else{
            ingredientsDict.removeValueForKey("Pepperoni")
        }
    }
    @IBAction func pavoSwitchBtn(value: Bool) {
        if (value == true){
            self.ingredientsDict["Turkey"] = "Turkey"
        }else{
            ingredientsDict.removeValueForKey("Turkey")
        }
    }
    @IBAction func salchichaSwitchBtn(value: Bool) {
        if (value == true) {
            self.ingredientsDict["Sausage"] = "Sausage"
        }else{
            ingredientsDict.removeValueForKey("Sausage")
        }
    }
    @IBAction func aceitunaSwitchBtn(value: Bool) {
        if (value){
            self.ingredientsDict["Olive"] = "Olive"
        }else{
            ingredientsDict.removeValueForKey("Olive")
        }
    }
    @IBAction func cebollaSwitchBtn(value: Bool) {
        if(value) {
            self.ingredientsDict["Onion"] = "Onion"
        }else{
            ingredientsDict.removeValueForKey("Onion")
        }
    }
    @IBAction func pimientoSwitchBtn(value: Bool) {
        if (value){
            self.ingredientsDict["Pepper"] = "Pepper"
        }else{
            ingredientsDict.removeValueForKey("Pepper")
        }
    }
    @IBAction func pinaSwitchBtn(value: Bool) {
        if (value){
            self.ingredientsDict["PineApple"] = "PineApple"
        }else{
            ingredientsDict.removeValueForKey("PineApple")
        }
    }
    @IBAction func anchoasSwitchBtn(value: Bool) {
        if (value) {
            self.ingredientsDict["Anchovies"] = "Anchovies"
        }else{
            ingredientsDict.removeValueForKey("Anchovies")
        }
    }
    
    @IBAction func btnOKIngredients() {
        
        var ingredientsArray:[String] = []
        for item in ingredientsDict.keys{
            ingredientsArray.append(item)
        }
        let myContext = ValueDoughCheesePizzaIngredients(cheese: self.currentCheesePizza, dough: self.currentDoughPizza, pizza: self.currentSizePizza, ingredients: ingredientsArray)
        pushControllerWithName("validateOrder", context: myContext)
    }
}
