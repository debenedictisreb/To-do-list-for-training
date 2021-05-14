//
//  ToDoTableTableViewController.swift
//  To-do list for training
//
//  Created by Rebecca DeBenedictis on 5/13/21.
//

import UIKit

class ToDoTableTableViewController: UITableViewController {

    var listOfToDo[indexPath.row] : [ToDoClass] = []
    
    func createToDo () -> [ToDoClass] {
        let swiftToDo = ToDoClass()
        swiftToDo.description = "Learn Swift"
        swiftToDo.important = true
        
        let dogToDo = ToDoClass()
        dogToDo.description = "Walk the Dog"
             // important is set to false by default

             return [swiftToDo, dogToDo]

    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        listOfToDo [indexPath.row] = createToDo()
    }

    // MARK: - Table view data source

   
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
        // #warning Incomplete implementation, return the number of rows
       
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let eachToDo = listOfToDo[indexPath.row]
        if eachToDo.important {
           cell.textLabel?.text = "❗️" + eachToDo.description
         } else {
           cell.textLabel?.text = eachToDo.description
         }
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.

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
   
    */

    /*
    // Override to support conditional rearranging of the table view.
  
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
