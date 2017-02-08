//
//  SecondViewController.swift
//  Todo List
//
//  Created by Juha Kesti on 08/02/17.
//  Copyright © 2017 nauski. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var itemTextField: UITextField!
    @IBAction func add(_ sender: Any) {
        
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        var items:NSMutableArray
        
        if let tempItems = itemsObject as? NSMutableArray {
            
            items = tempItems
            
            items.addObjects(from: [itemTextField.text!])
        
        } else {
            let items = [itemTextField.text!]
        }
        
        UserDefaults.standard.set(items, forKey: "items")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

