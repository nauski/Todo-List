//
//  SecondViewController.swift
//  Todo List
//
//  Created by Juha Kesti on 08/02/17.
//  Copyright © 2017 nauski. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var itemTextField: UITextField!
    
    @IBAction func add(_ sender: Any) {
        
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        
       // var items:NSMutableArray
        var items = [String]()
        
        if let tempItems = itemsObject as? Array<Any> {
            
            items = tempItems as! [String]
            
            //items.addObjects(from: [itemTextField.text!])
            items.append(itemTextField.text!)
            
        } else {
            
            items = [itemTextField.text!]
        
        }
        
        UserDefaults.standard.set(items, forKey: "items")
        itemTextField.text = ""
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
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

