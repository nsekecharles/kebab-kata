//
//  IngredientVisitor.swift
//  kata-kebab
//
//  Created by Charles NSEKE on 09/05/2016.
//  Copyright © 2016 Charles NSEKE. All rights reserved.
//

import Foundation

protocol IngredientVisitor {
    func visit(ingredient: Ingredient)
    func visit(kebab: Kebab)
}