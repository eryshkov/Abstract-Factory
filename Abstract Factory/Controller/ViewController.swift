//
//  ViewController.swift
//  Abstract Factory
//
//  Created by Evgeniy Ryshkov on 20/01/2019.
//  Copyright © 2019 Evgeniy Ryshkov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: -
    var chair: Chair?
    var table: Table?
    var sofa: Sofa?

    //MARK: -
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //MARK: -
    @IBAction func kitchenOrderTapped(_ sender: UIButton) {
        let factory = KitchenFactory()
        chair = factory.createChair()
        table = factory.createTable()
        sofa = factory.createSofa()
        
        performSegue(withIdentifier: "DetailSegue", sender: self)
    }
    
    @IBAction func bedroomOrderTapped(_ sender: UIButton) {
        let factory = BedroomFactory()
        chair = factory.createChair()
        table = factory.createTable()
        sofa = factory.createSofa()
        
        performSegue(withIdentifier: "DetailSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! DetailTableViewController
        vc.chair = chair
        vc.table = table
        vc.sofa = sofa
        vc.numberOfItems = 3
    }
    
}

