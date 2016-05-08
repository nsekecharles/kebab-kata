//
//  Kebab.swift
//  kata-kebab
//
//  Created by Charles NSEKE on 07/05/2016.
//  Copyright © 2016 Charles NSEKE. All rights reserved.
//

import Foundation

class Kebab {
    
    var ingredients: [Ingredient]
    
    init(ingredients: [Ingredient]) {
        self.ingredients = ingredients
    }
    
    func isVegeterian() -> Bool {
        var isVegetarian: Bool = true
        
        if ingredients.contains({$0.isVegetable == false})  {
            isVegetarian = false
        }
        
        return isVegetarian
    }
    
    func isPescetarian() -> Bool {
        var isPescetarian: Bool = true
        
        if ingredients.contains({$0.isSeaMeet == false && $0.isMeet == true})  {
            isPescetarian = false
        }
        
        return isPescetarian
    }
    
    func removeIngredient(ingredient: Ingredient) {
        ingredients = ingredients.filter({$0.name != ingredient.name});
    }
    
    func getComposition() -> String {
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