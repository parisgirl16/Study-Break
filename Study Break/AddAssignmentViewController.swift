//
//  AddAssignmentViewController.swift
//  Study Break
//
//  Created by Apple on 7/15/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class AddAssignmentViewController: UIViewController {

    var previousVC = AssignmentsTableViewController()
        
        
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var importantSwitch: UISwitch!
    
        
        override func viewDidLoad() {
            super.viewDidLoad()

            // Do any additional setup after loading the view.
        }
        
    @IBAction func addTapped(_ sender: Any) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            let toDo = ToDoCD(entity: ToDoCD.entity(), insertInto: context)
            
            if let titleText = titleTextField.text {
                toDo.name = titleText
                toDo.important = importantSwitch.isOn
                toDo.descriptionInput = descriptionTextView.text
            }
            
            try? context.save()
            navigationController?.popViewController(animated: true)
        }
    }
    
        
        /*
        // MARK: - Navigation

        // In a storyboard-based application, you will often want to do a little preparation before navigation
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            // Get the new view controller using segue.destination.
            // Pass the selected object to the new view controller.
        }
        */

    }
