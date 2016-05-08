//
//  Ingredient.swift
//  kata-kebab
//
//  Created by Charles NSEKE on 07/05/2016.
//  Copyright © 2016 Charles NSEKE. All rights reserved.
//

import Foundation

class Ingredient: IngredientProtocol {
    
    var name: String
    var isVegetable: Bool
    var isSeaMeet: Bool
    var isMeet: Bool
    
    init(name: String, isVegetable: Bool, isMeet:Bool, isSeaMeet: Bool) {
        self.name = name
        self.isVegetable = isVegetable
        self.isSeaMeet = isSeaMeet
        self.isMeet = isMeet
    }
    
    func toString()-> String {
        let index = name.startIndex
        return String(name.uppercaseString[index])
    }
    
    func isVegetarian() -> Bool {
        return self.isVegetable || !self.isMeet
    }
    
    
    func isPescetarian() -> Bool {
        return (self.isSeaMeet && self.isMeet) || !self.isMeet
    }
    
}
