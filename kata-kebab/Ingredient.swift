//
//  Ingredient.swift
//  kata-kebab
//
//  Created by Charles NSEKE on 07/05/2016.
//  Copyright © 2016 Charles NSEKE. All rights reserved.
//

import Foundation

class Ingredient: IngredientVisitable {
    
    var name: String
    var isSeaMeet: Bool
    var isMeet: Bool
    
    init(name: String, isMeet:Bool, isSeaMeet: Bool) {
        self.name = name
        self.isSeaMeet = isSeaMeet
        self.isMeet = isMeet
    }
    
    func accept(visitor: IngredientVisitor) {
        visitor.visit(self)
    }
    
    func toString()-> String {
        let index = name.startIndex
        return String(name.uppercaseString[index])
    }
    
    
}
