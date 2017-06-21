//
//  Animal.swift
//  oop-abstract
//
//  Created by Caio Dias on 2017-06-19.
//  Copyright © 2017 Caio Dias. All rights reserved.
//

class Animal {
    enum AnimalType {
        case dog
        case cat
        case lion
        case sheep
    }
    
    enum AnimalFoods {
        case none
        case meat
        case plants
        case eggs
        case milk
    }
    
    var type: AnimalType
    var baseFood: AnimalFoods
    var maxAge: Int
    var owner: String
    
    init(withType type: AnimalType, andOwner name: String) {
        self.type = type
        self.owner = name
        
        switch self.type {
        case .dog:
            self.baseFood = .milk
            self.maxAge = 12
            break
        case .cat:
            self.baseFood = .milk
            self.maxAge = 10
            break
        case .lion:
            self.baseFood = .meat
            self.maxAge = 25
            break
        case .sheep:
            self.baseFood = .plants
            self.maxAge = 15
            break
        }
    }

    func getSound() -> String {
        var sound: String = ""

        switch self.type {
        case .dog:
            sound = "Woof"
            break
        case .cat:
            sound = "Meow"
            break
        case .lion:
            sound = "Roar"
            break
        case .sheep:
            sound = "Baaa"
            break
        }
        
        return sound
    }
    
    func toString() -> String {
        return "Animal Sound: \(self.getSound())\nFood: \(self.baseFood)\nMax Age: \(self.maxAge)\nOwner: \(self.owner)\n"
    }
}