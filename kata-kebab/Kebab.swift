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
        
        if ingredients.contains({$0.isSeaMeet == false && $0.isVegetable == false})  {
            isPescetarian = false
        }
        
        return isPescetarian
    }
}