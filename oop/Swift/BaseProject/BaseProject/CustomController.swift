//
//  CustomController.swift
//  BaseProject
//
//  Created by Caio Dias on 2017-06-22.
//  Copyright © 2017 ProDigi. All rights reserved.
//

final class CustomController {
    public private(set) var list: [CustomObject]
    public static let sharedInstance = CustomController()
    
    private init() {
        self.list = [CustomObject]()
    }
}
