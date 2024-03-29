//
//  RaffleUITableViewController.swift
//  Raffle
//
//  Created by StarWen on 14/4/20.
//  Copyright © 2020 StarWen. All rights reserved.
//

import UIKit

class RaffleUITableViewController: UITableViewController {
    
    var raffles = [Raffle]()

    override func viewDidLoad()
    {
         super.viewDidLoad()
         let database : SQLiteDatabase = SQLiteDatabase(databaseName: "MyDatabase")
        database.insert(raffle:Raffle(name:"RaffleA", price:23, description:"noteA"))
    database.insert(raffle:Raffle(name:"RaffleB", price:19, description:"NoteB"))
        raffles = database.selectAllRaffles()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int
    {
    return 1 }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return raffles.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
    let cell = tableView.dequeueReusableCell(withIdentifier: "RaffleUITableViewCell", for: indexPath)
    
        let raffle = raffles[indexPath.row]
        if let raffleCell = cell as? RaffleUITableViewCell
        {
             raffleCell.nameLable.text = raffle.name
             raffleCell.priceLable.text = String(raffle.price)
        }
        
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
