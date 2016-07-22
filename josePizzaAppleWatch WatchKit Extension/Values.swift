//
//  Values.swift
//  josePizzaAppleWatch
//
//  Created by MCS on 7/19/16.
//  Copyright © 2016 myCompany. All rights reserved.
//

import WatchKit

class SizeValue : NSObject {
    var sizeDescription : String
    
    init(sDescription:String) {
        self.sizeDescription = sDescription
    }
}

class DoughValue : NSObject {
    var doughDescription : String
    var sizePizza:String
    
    init(doughDesc:String,sizePizza:String) {
        self.doughDescription = doughDesc
        self.sizePizza = sizePizza
    }
    
}

class ValueDoughCheesePizza : NSObject {
    var pizzaDescription : String
    var doughDescription : String
    var cheeseDescription : String
    
    init(cheese: String, dough: String, pizza:String) {
        self.pizzaDescription = pizza
        self.doughDescription = dough
        self.cheeseDescription = cheese
    }
}

class ValueDoughCheesePizzaIngredients : NSObject {
    var pizzaDescription : String
    var doughDescription : String
    var cheeseDescription : String
    var ingredientsArrayDesc : [String]
    
    init(cheese: String, dough: String, pizza:String, ingredients:[String]) {
        self.pizzaDescription = pizza
        self.doughDescription = dough
        self.cheeseDescription = cheese
        self.ingredientsArrayDesc = ingredients
    }
}

class ValidateOrderData : NSObject {
    var message : String
    
    init(messageScreen:String) {
        self.message = messageScreen
    }
}
