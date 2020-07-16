//
//  DeletedJournalViewController.swift
//  Study Break
//
//  Created by Apple on 7/16/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class DeletedJournalViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var journalEntryLabel: UITextView!
    
    var previousVC = JournalsTableViewController()
    var selectedJournal : JournalCD?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        titleLabel.text = selectedJournal?.title
        dateLabel.text = selectedJournal?.date
        journalEntryLabel.text = selectedJournal?.journalEntry
    }
        
    @IBAction func deleteJournal(_ sender: Any) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            if let theEntry = selectedJournal {
                context.delete(theEntry)
                navigationController?.popViewController(animated: true)
            }
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
