//
//  IngredientProtocol.swift
//  kata-kebab
//
//  Created by Charles NSEKE on 08/05/2016.
//  Copyright © 2016 Charles NSEKE. All rights reserved.
//

import Foundation

protocol  IngredientProtocol {
    var name: String {get}
    
    func toString() -> String
    func isVegetarian() -> Bool
    func isPescetarian() -> Bool
}