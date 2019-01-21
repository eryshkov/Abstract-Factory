//
//  BedroomChair.swift
//  Abstract Factory
//
//  Created by Evgeniy Ryshkov on 21/01/2019.
//  Copyright © 2019 Evgeniy Ryshkov. All rights reserved.
//

import UIKit

struct BedroomChair: Chair {
    var image: UIImage = UIImage(named: "bedroomChair")!
    
    var name: String = "Стул"
    
    var type: String = "Стул для спальни"
    
    
}
