//
//  Kebab.swift
//  kata-kebab
//
//  Created by Charles NSEKE on 07/05/2016.
//  Copyright © 2016 Charles NSEKE. All rights reserved.
//

import Foundation

class Kebab : IngredientVisitable {
    
    var name: String
    var ingredients: [Ingredient]
    
    init(name: String) {
        self.name = name
        self.ingredients = []
    }
    
    func accept(visitor: IngredientVisitor) {
        visitor.visit(self)
    }
    
    func addIngredient(ingredient: Ingredient) {
        ingredients.append(ingredient)
    }
    
    func removeIngredient(ingredient: Ingredient) {
        ingredients = ingredients.filter({$0.name != ingredient.name});
    }
    
    func toString() -> String {
        return ingredients.map({$0.toString()}).joinWithSeparator("|");
    }
    
    func doubleIngredient(ingredient: Ingredient) {
        var indexesOfIngredient: [Int] = []
        if ingredients.contains({$0.name == ingredient.name}) {
            for index in 0..<ingredients.count {
                if ingredients[index].name == ingredient.name {
                    indexesOfIngredient.append(index)
                }
            }
            for counter in 0..<indexesOfIngredient.count {
                ingredients.insert(ingredient, atIndex: indexesOfIngredient[counter] + counter)
            }
        }
    }
    
    
    
    
    
}