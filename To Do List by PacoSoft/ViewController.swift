//
//  ViewController.swift
//  To Do List by PacoSoft
//
//  Created by Francisco de la Pena on 2/17/15.
//  Copyright (c) 2015 ___QuixoteLabs___. All rights reserved.
//

import UIKit

var myTodoList = [String]()

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var inputTextField: UITextField!
    
    @IBAction func addItemButtonPressed(sender: UIButton) {
        
        if(inputTextField.text != "") {
            
            myTodoList.append(inputTextField.text)
            
            println(myTodoList)
            
            inputTextField.text = ""
            
            NSUserDefaults.standardUserDefaults().setObject(myTodoList, forKey: "toDoList")
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
            
            self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
    }

}

