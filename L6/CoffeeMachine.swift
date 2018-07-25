//
//  CoffeeMachine.swift
//  L6
//
//  Created by MacBook on 24.07.2018.
//  Copyright © 2018 MacBook. All rights reserved.
//

import UIKit

class CoffeeMachine: NSObject {
    
    private var coffee = 0
    private var water = 0
    private var milk = 0
    private var layersOfDirt = 0
    
    var textToDisplay = "Please choose the drink"
    
    private func makeDrink(name: String, coffee: Int, water: Int, milk: Int) {
        guard self.coffee >= coffee else {
            textToDisplay = "Not enough coffee! Please push the button \"add coffee\""
            print(textToDisplay)
            return
        }
        guard self.water >= water else {
            textToDisplay = "Not enough water! Please push the button \"add water\""
            print(textToDisplay)
            return
        }
        guard self.milk >= milk else {
            textToDisplay = "Not enough milk! Please push the button \"add milk\""
            print(textToDisplay)
            return
        }
        guard self.layersOfDirt < 3 else {
            textToDisplay = "The pallet is dirty! Please push the button \"cleaning\""
            print(textToDisplay)
            return
        }
        self.coffee -= coffee
        self.water -= water
        self.milk -= milk
        self.layersOfDirt += 1
        textToDisplay = "Your \(name) is ready, enjoy!"
        print(textToDisplay)
    }
    
//----------range of drinks----------
    
    func espresso() {
        makeDrink(name: "espresso", coffee: 7, water: 30, milk: 0)
    }
    
    func americano() {
        makeDrink(name: "americano", coffee: 16, water: 120, milk: 0)
    }
    
    func cappuccino() {
        makeDrink(name: "cappuccino", coffee: 12, water: 50, milk: 100)
    }
    
//----------function buttons----------
    
    func addCoffee() {
        coffee += 100
        textToDisplay = "Done! Coffee = \(coffee) gr"
        print(textToDisplay)
    }

    func addWater() {
        water += 200
        textToDisplay = "Done! Water = \(water) ml"
        print(textToDisplay)
    }
    
    func addMilk() {
        milk += 200
        textToDisplay = "Done! Milk = \(milk) ml"
        print(textToDisplay)
    }
    
    func cleaning() {
        layersOfDirt = 0
        textToDisplay = "Done! The pallet is clean"
        print(textToDisplay)
    }
    
    func info() {
        let condition = layersOfDirt > 3 ? "dirty" : "clean"
        textToDisplay = """
                        Coffee = \(coffee) g
                        Water = \(water) ml
                        Milk = \(milk) ml
                        Condition = \(condition)
                        """
        print(textToDisplay)
    }
    
}
