//
//  Burger.swift
//  MiniApp_BurgerApp
//
//  Created by Tiger Coder on 10/27/20.
//  Copyright © 2020 clc babischkin. All rights reserved.
//

import Foundation

class Burger
{
    var price : Double
    var fries : Bool
    var Calories : Int
    enum Cooked: String {
        case rare
        case mediumRare
        case medium
        case mediumWell
        case well
        //
    }
    enum Burgertype: String {
        case justHavetheSalad
        case obesityBurger
        case wrongBurger
        case glutenFreeBurger
    }
    var burgertype: String
    var cooked: String
    init(Price:Double, c:Int, co: String, type: String, Fries: Bool) {
        price = Price
        Calories = c
        if co.elementsEqual("Well")
        {
            cooked = Cooked.well.rawValue
        }
        else if co.elementsEqual("Medium Well")
        {
            cooked = Cooked.mediumWell.rawValue
        }
        else if co.elementsEqual("medium") {
            cooked = Cooked.medium.rawValue
        }
        else if co.elementsEqual("medium rare") {
            cooked = Cooked.mediumRare.rawValue
        }
        else {
            cooked = Cooked.rare.rawValue
        }
        if type.elementsEqual("just Have a Salad") {
            burgertype = Burgertype.justHavetheSalad.rawValue
        }
        else if type.elementsEqual("obesity Burger") {
            burgertype = Burgertype.obesityBurger.rawValue
        }
        else if type.elementsEqual("wrong Burger") {
            burgertype = Burgertype.wrongBurger.rawValue
        }
        else {
            burgertype = Burgertype.glutenFreeBurger.rawValue
        }
        fries = Fries
    }
    func receipt() -> String {
        return ("burgertype: \(burgertype), Cooked \(cooked), calories \(Calories), if you wanted fries \(fries), price: \(price)")
    }
    
    
}
