//
//  main.swift
//  kata-kebab
//
//  Created by Charles NSEKE on 07/05/2016.
//  Copyright © 2016 Charles NSEKE. All rights reserved.
//

import Foundation

let tomate = Ingredient(name: "Tomate", isVegetable: true)
let beef = Ingredient(name: "Beef", isVegetable: false)
let ingredients = [tomate, beef]
let kebab = Kebab(ingredients: ingredients)

if kebab.isVegeterian() {
    print("vegetarian")
}else {
    print("not vegetarian")
}