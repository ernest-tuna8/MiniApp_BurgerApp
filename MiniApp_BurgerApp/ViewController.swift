//
//  ViewController.swift
//  MiniApp_BurgerApp
//
//  Created by Tiger Coder on 10/27/20.
//  Copyright © 2020 clc babischkin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ReceptOutlet: UILabel!
    @IBOutlet weak var CookedOutlet: UILabel!
    @IBOutlet weak var burgerPurchaseButton: UIButton!
    
    @IBOutlet weak var ImageViewOutlet: UIImageView!
    @IBOutlet weak var bottumLabel: UILabel!
    var cooked = "nil"
    var type = "nil"
    var cals : Int = 0
    var price : Double = 0
    var fry : Bool = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ImageViewOutlet.image = UIImage(named: "choose-wisely")
        // Do any additional setup after loading the view.
    }
    @IBAction func MediumWellButton(_ sender: UIButton) {
        cooked = "Medium Well"
    }
    @IBAction func rareButton(_ sender: UIButton) {
        cooked = "Rare"
    }
    @IBAction func mediumRareButton(_ sender: UIButton) {
        cooked = "medium rare"
    }
    @IBAction func mediumButton(_ sender: UIButton) {
        cooked = "medium"
    }
    @IBAction func wellButton(_ sender: UIButton) {
        cooked = "Well"
        CookedOutlet.text = "you are a psychopath. Meat well done is a waste of meat and an insult towards cows and buffalo"
    }
    @IBAction func justHaveaSaladButton(_ sender: UIButton) {
        type = "just Have a Salad"
        cals = 300
    }
    @IBAction func Obesitybutton(_ sender: UIButton) {
        type = "obesity Burger"
        cals = 5000
    }
    @IBAction func GlutenFreeButton(_ sender: UIButton) {
        type = "Gluten Free"
        cals = 515
    }
    @IBAction func WrongBurgerButton(_ sender: UIButton) {
        type = "Wrong Burger"
        cals = 600
    }
    @IBAction func yesbutton(_ sender: UIButton) {
        fry = true
        cals = cals+100
        price = price + 1.00
    }
    @IBAction func nobutton(_ sender: UIButton) {
        fry = false
        if type != ("nil") && cooked  != ("nil"){
            burgerPurchaseButton.isHidden = false
        }
    }
    
    
    
    @IBAction func buyaBurgerButton(_ sender: UIButton) {
        var burger = Burger(Price: price, c: cals, co: cooked, type: type, Fries: fry)
        bottumLabel.text = burger.receipt()
     

}

}
