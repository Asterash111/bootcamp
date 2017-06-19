//
//  Animal.swift
//  oop-abstract
//
//  Created by Caio Dias on 2017-06-19.
//  Copyright © 2017 Caio Dias. All rights reserved.
//

public enum AnimalFoods {
    case meat
    case plants
    case eggs
    case milk
}

public protocol Animal {
    var baseFood: AnimalFoods { get }
    var maxAge: Int { get }

    func getSound() -> String
    func toString() -> String
}
