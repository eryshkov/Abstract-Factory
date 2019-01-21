//
//  BedroomFactory.swift
//  Abstract Factory
//
//  Created by Evgeniy Ryshkov on 21/01/2019.
//  Copyright © 2019 Evgeniy Ryshkov. All rights reserved.
//

import Foundation

struct BedroomFactory: AbstractFactory {
    
    func createChair() -> Chair {
        let result = BedroomChair()
        print("\(result.type) создан")
        return result
    }
    
    func createSofa() -> Sofa {
        let result = BedroomSofa()
        print("\(result.type) создан")
        return result
    }
    
    func createTable() -> Table {
        let result = BedroomTable()
        print("\(result.type) создан")
        return result
    }
    
    
}
