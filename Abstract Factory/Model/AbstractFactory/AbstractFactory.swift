//
//  AbstractFactory.swift
//  Abstract Factory
//
//  Created by Evgeniy Ryshkov on 21/01/2019.
//  Copyright © 2019 Evgeniy Ryshkov. All rights reserved.
//

import Foundation

protocol AbstractFactory {
    func createChair() -> Chair
    func createSofa() -> Sofa
    func createTable() -> Table
}
