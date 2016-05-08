//
//  main.swift
//  kata-kebab
//
//  Created by Charles NSEKE on 07/05/2016.
//  Copyright © 2016 Charles NSEKE. All rights reserved.
//

import Foundation

let tomate = Ingredient(name: "Tomate", isVegetable: true, isMeet: false, isSeaMeet: false)
let beef = Ingredient(name: "Beef", isVegetable: false, isMeet: true, isSeaMeet: false)
let fish = Ingredient(name: "Fish", isVegetable: false, isMeet: true, isSeaMeet: true)
let cheese = Ingredient(name: "Cheese", isVegetable: false, isMeet: false, isSeaMeet: false)
let onion = Ingredient(name: "Onion", isVegetable: true, isMeet: false, isSeaMeet: false)

let ingredients = [cheese, tomate, beef, cheese, onion]
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

print(kebab.getComposition())

kebab.removeIngredient(onion)

print(kebab.getComposition())

kebab.doubleIngredient(cheese)

print(kebab.getComposition())