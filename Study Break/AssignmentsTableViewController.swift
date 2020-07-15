//
//  AssignmentsTableViewController.swift
//  Study Break
//
//  Created by Apple on 7/15/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class AssignmentsTableViewController: UITableViewController {

    var toDos : [ToDoCD] = []
        
        func getToDos() {
            if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
                if let coreDataToDos = try? context.fetch(ToDoCD.fetchRequest()) as? [ToDoCD] {
                        toDos = coreDataToDos
                        tableView.reloadData()
                }
            }
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            getToDos()
        }
            // Uncomment the following line to preserve selection between presentations
            // self.clearsSelectionOnViewWillAppear = false

            // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
            // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        override func viewWillAppear(_ animated: Bool) {
            getToDos()
        }

        // MARK: - Table view data source

        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            // #warning Incomplete implementation, return the number of rows
            return toDos.count
        }
        
    //    func createToDos() -> [ToDo] {
    //        let swift = ToDo()
    //        swift.name = "Learn Swift"
    //        swift.important = true
    //
    //        let dog = ToDo()
    //        dog.name = "Walk the dog"
    //
    //        return [swift, dog]
    //    }

        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

            // Configure the cell...
            let toDo = toDos[indexPath.row]
            
            if let name = toDo.name {
                if toDo.important {
                    cell.textLabel?.text = "‼ " + name
                } else {
                    cell.textLabel?.text = toDo.name
                }
            }
            
            return cell
        }
        
        override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let toDo = toDos[indexPath.row]
            
            performSegue(withIdentifier: "moveToComplete", sender: toDo)
        }

        /*
        // Override to support conditional editing of the table view.
        override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
            // Return false if you do not want the specified item to be editable.
            return true
        }
        */

        /*
        // Override to support editing the table view.
        override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            if editingStyle == .delete {
                // Delete the row from the data source
                tableView.deleteRows(at: [indexPath], with: .fade)
            } else if editingStyle == .insert {
                // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
            }
        }
        */

        /*
        // Override to support rearranging the table view.
        override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

        }
        */

        /*
        // Override to support conditional rearranging of the table view.
        override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
            // Return false if you do not want the item to be re-orderable.
            return true
        }
        */

        
        // MARK: - Navigation

        // In a storyboard-based application, you will often want to do a little preparation before navigation
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            // Get the new view controller using segue.destination.
            // Pass the selected object to the new view controller.
            if let addVC = segue.destination as? AddAssignmentViewController {
                addVC.previousVC = self
            }
            
            if let completeVC = segue.destination as? CompletedAssignmentViewController {
                if let toDo = sender as? ToDoCD {
                    completeVC.selectedToDo = toDo
                    completeVC.previousVC = self
                }
            }
        }
        
        
    }
