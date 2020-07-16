//
//  AddJournalViewController.swift
//  Study Break
//
//  Created by Apple on 7/16/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class AddJournalViewController: UIViewController {

    var previousVC = JournalsTableViewController()

    @IBOutlet weak var titleText: UITextField!
    @IBOutlet weak var dateText: UITextField!
    @IBOutlet weak var journalEntryText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
        
    @IBAction func addJournal(_ sender: Any) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            let entry = JournalCD(entity: JournalCD.entity(), insertInto: context)
            
            if let titleText = titleText.text {
                entry.title = titleText
                entry.date = dateText.text
                entry.journalEntry = journalEntryText.text
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
