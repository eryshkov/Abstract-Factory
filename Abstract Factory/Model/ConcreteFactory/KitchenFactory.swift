//
//  KitchenFactory.swift
//  Abstract Factory
//
//  Created by Evgeniy Ryshkov on 21/01/2019.
//  Copyright © 2019 Evgeniy Ryshkov. All rights reserved.
//

import Foundation

struct KitchenFactory: AbstractFactory {
    func createChair() -> Chair {
        let result = KitchenChair()
        print("\(result.type) создан")
        return result
    }
    
    func createSofa() -> Sofa {
        let result = KitchenSofa()
        print("\(result.type) создан")
        return result
    }
    
    func createTable() -> Table {
        let result = KitchenTable()
        print("\(result.type) создан")
        return result
    }
    
    
}
