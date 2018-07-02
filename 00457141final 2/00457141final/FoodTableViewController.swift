//
//  FoodTableViewController.swift
//  00457141final
//
//  Created by User09 on 2018/6/13.
//  Copyright © 2018年 User09. All rights reserved.
//

import UIKit

class FoodTableViewController: UITableViewController {

    var foods = [Food]()

    
    @IBAction func goBackToFoodTable(segue: UIStoryboardSegue) {
        let controller = segue.source as? EditFoodTableViewController
        
        if let food = controller?.food {
            if let row = tableView.indexPathForSelectedRow?.row {
                foods[row] = food
            }
            else{
                foods.insert(food, at: 0)
            }
            Food.saveToFile(foods: foods)
            tableView.reloadData()
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        if let foods = Food.readFoodsFromFile() {
            self.foods = foods
        }
    }


    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        foods.remove(at: indexPath.row)
        Food.saveToFile(foods: foods)
        tableView.reloadData()
    }
        
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return foods.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath) as! FoodTableViewCell
        
        let food = foods[indexPath.row]
        cell.nameLabel.text = food.name
        cell.phoneLabel.text = food.phone
        
        return cell
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let Controller = segue.destination as? FoodDetailViewController
        if let row = tableView.indexPathForSelectedRow?.row
        {
            let foodsent = foods[row]
            
            Controller?.food = foodsent
        }
    
    }
}
