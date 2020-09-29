//
//  TableViewController.swift
//  MealTest
//
//  Created by Julian Rich on 29/9/20.
//  Copyright © 2020 Julian Rich. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    
    //Connection to view Model
    private let viewModel = MealTestViewModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    //override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
    //    return 0
    //}

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        //This creates a row in the table for how many items were in the viewModel collection we created in the the ViewModel Struct.VVV
        return viewModel.count
    }

    
    //*** this function gets called everytime a new cell is created.***
    //Accessing the indexPath
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Configure the below line with your table cells' reuse identifier, in this case its mealCell.
        //You do this instead of creating an 'outlet' like you do when you hold control and drag to viewController.
        //Any items inside the cell will be reused so you cant create an outlet for them.
        let cell = tableView.dequeueReusableCell(withIdentifier: "mealCell", for: indexPath)
        
        //This creates a reference to the imageView item in the cell. Get a reference you change the tag to 1000. Its a naming convention to start at 1000 and increment for the other items in the cell like the other labels.
        //You also have to cast the variable to a UIImageView because it doesn't automatic know.
        let imageView = cell.viewWithTag(1000) as? UIImageView
        
        //The same for this label
        let mealTitle = cell.viewWithTag(1001)as? UILabel
        
        
        let mealType = cell.viewWithTag(1002) as? UILabel
        
        //Before you use them you want to safely unwrap these as below. These variables are only available inside the curly braces below. This is why you can name the same as above.*****
        if let imageView = imageView, let mealTitle = mealTitle, let mealType = mealType
        {
            //This variable uses the row number of the table( they start at 0) to access this member of the collection and store it in currentMeal.******
            let currentMeal = viewModel.getMeal(byIndex: indexPath.row)
            //Changes the cell objects properties to display them on the scene
            imageView.image = currentMeal.image
            mealTitle.text = currentMeal.mealName
            mealType.text = currentMeal.mealType.rawValue
        }
        //Returns the cell with all the properties in it above.
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
