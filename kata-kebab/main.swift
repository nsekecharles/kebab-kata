//
//  main.swift
//  kata-kebab
//
//  Created by Charles NSEKE on 07/05/2016.
//  Copyright © 2016 Charles NSEKE. All rights reserved.
//

import Foundation

let tomate = Ingredient(name: "Tomate", isMeet: false, isSeaMeet: false)
let beef = Ingredient(name: "Beef", isMeet: true, isSeaMeet: false)
let fish = Ingredient(name: "Fish", isMeet: true, isSeaMeet: true)
let cheese = Ingredient(name: "Cheese", isMeet: false, isSeaMeet: false)
let onion = Ingredient(name: "Onion", isMeet: false, isSeaMeet: false)

let kebab = Kebab(name: "kebab")

kebab.addIngredient(cheese)
kebab.addIngredient(tomate)
kebab.addIngredient(fish)
kebab.addIngredient(cheese)
kebab.addIngredient(onion)

let vegetarianVisitor: VegetarianVisitor = VegetarianVisitor()
let pescetarianVisitor: PescetarianVisitor = PescetarianVisitor()

vegetarianVisitor.visit(kebab)
if vegetarianVisitor.isAVegetarian() {
    print("vegetarian")
}else {
    print("not vegetarian")
}

pescetarianVisitor.visit(kebab)
if pescetarianVisitor.isAPescetarian() {
    print("also pesceterian")
}else {
    print("not pesceterian")
}

print(kebab.toString())

kebab.removeIngredient(onion)

print(kebab.toString())

kebab.doubleIngredient(cheese)

print(kebab.toString())