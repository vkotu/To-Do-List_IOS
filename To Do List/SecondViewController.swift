//
//  SecondViewController.swift
//  To Do List
//
//  Created by Venkat Kotu on 2/8/16.
//  Copyright © 2016 VenkatKotu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController , UITextFieldDelegate{

    @IBOutlet weak var inpVal: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.inpVal.delegate  = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addItem(sender: AnyObject) {
        
        toDoList.append(inpVal.text!)
        inpVal.text = ""
        
        NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }


}

