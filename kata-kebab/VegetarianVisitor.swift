//
//  VegetarianVisitor.swift
//  kata-kebab
//
//  Created by Charles NSEKE on 09/05/2016.
//  Copyright © 2016 Charles NSEKE. All rights reserved.
//

import Foundation

class VegetarianVisitor: IngredientVisitor {
    
    var isVegetarian: Bool = false
    
    func visit(ingredient: Ingredient) {
        isVegetarian = !ingredient.isMeet
    }
    
    func visit(kebab: Kebab) {
        isVegetarian = true
        if kebab.ingredients.contains({self.visit($0); return self.isAVegetarian() == false})  {
            isVegetarian = false
        }
    }
    
    func isAVegetarian() -> Bool {
        return isVegetarian
    }
}