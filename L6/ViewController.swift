//
//  ViewController.swift
//  L6
//
//  Created by MacBook on 24.07.2018.
//  Copyright © 2018 MacBook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let myCoffeeMachine = CoffeeMachine.init()
    
    @IBOutlet weak var display: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        display.text = myCoffeeMachine.textToDisplay
        
    }
    
    @IBAction func makeEspresso() {
        myCoffeeMachine.espresso()
        display.text = myCoffeeMachine.textToDisplay
    }
    
    @IBAction func makeAmericano() {
        myCoffeeMachine.americano()
        display.text = myCoffeeMachine.textToDisplay
    }
    
    @IBAction func makeCappuccino() {
        myCoffeeMachine.cappuccino()
        display.text = myCoffeeMachine.textToDisplay
    }
    
    @IBAction func addCoffee() {
        myCoffeeMachine.addCoffee()
        display.text = myCoffeeMachine.textToDisplay
    }
    
    @IBAction func addWater() {
        myCoffeeMachine.addWater()
        display.text = myCoffeeMachine.textToDisplay
    }
    
    @IBAction func addMilk() {
        myCoffeeMachine.addMilk()
        display.text = myCoffeeMachine.textToDisplay
    }
    
    @IBAction func cleaning() {
        myCoffeeMachine.cleaning()
        display.text = myCoffeeMachine.textToDisplay
    }
    
    @IBAction func info() {
        myCoffeeMachine.info()
        display.text = myCoffeeMachine.textToDisplay
    }
    
}
