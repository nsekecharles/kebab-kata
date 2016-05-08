//
//  Ingredient.swift
//  kata-kebab
//
//  Created by Charles NSEKE on 07/05/2016.
//  Copyright © 2016 Charles NSEKE. All rights reserved.
//

import Foundation

class Ingredient {
    
    var name: String
    var isVegetable: Bool
    var isSeaMeet: Bool
    init(name: String, isVegetable: Bool, isSeaMeet: Bool) {
        self.name = name
        self.isVegetable = isVegetable
        self.isSeaMeet = isSeaMeet
    }
}