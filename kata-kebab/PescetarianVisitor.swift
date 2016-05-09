//
//  PescetarianVisitor.swift
//  kata-kebab
//
//  Created by Charles NSEKE on 09/05/2016.
//  Copyright © 2016 Charles NSEKE. All rights reserved.
//

import Foundation

class PescetarianVisitor: IngredientVisitor {
    
    var isPescetarian: Bool = false
    
    func visit(ingredient: Ingredient) {
        isPescetarian = (ingredient.isSeaMeet && ingredient.isMeet) || !ingredient.isMeet
    }
    
    func visit(kebab: Kebab) {
        isPescetarian = true
        if kebab.ingredients.contains({self.visit($0); return self.isAPescetarian() != true})  {
            isPescetarian = false
        }
    }
    
    func isAPescetarian() -> Bool {
        return isPescetarian
    }
}