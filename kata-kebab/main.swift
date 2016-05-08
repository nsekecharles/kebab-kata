//
//  main.swift
//  kata-kebab
//
//  Created by Charles NSEKE on 07/05/2016.
//  Copyright © 2016 Charles NSEKE. All rights reserved.
//

import Foundation

let tomate = Ingredient(name: "Tomate", isVegetable: true, isSeaMeet: false)
let beef = Ingredient(name: "Beef", isVegetable: false, isSeaMeet: false)
let fish = Ingredient(name: "Fish", isVegetable: false, isSeaMeet: true)
let ingredients = [tomate, fish]
let kebab = Kebab(ingredients: ingredients)

if kebab.isVegeterian() {
    print("vegetarian")
}else {
    print("not vegetarian")
}


if kebab.isPescetarian() {
    print("also pesceterian")
}else {
    print("not pesceterian")
}