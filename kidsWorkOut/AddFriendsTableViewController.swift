//
//  AddFriendsTableViewController.swift
//  kidsExercise
//
//  Created by wusuchen on 2016/5/19.
//  Copyright © 2016年 lakst. All rights reserved.
//

import UIKit

class AddFriendsTableViewController: UITableViewController {

    @IBAction func close(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBOutlet weak var OneTableViewCell: UITableViewCell!
    
    @IBOutlet weak var TwoTableVIewCell: UITableViewCell!
    @IBOutlet weak var ThreeTableVIewCell: UITableViewCell!
    
    
    @IBOutlet weak var FourTableVIewCell: UITableViewCell!
    
    @IBOutlet weak var FiveTableVIewCell: UITableViewCell!
    
    
    
//    @IBAction func cancelToPlayersViewController(segue:UIStoryboardSegue) {
//    }
//    
//    @IBAction func savePlayerDetail(segue:UIStoryboardSegue) {
//    }
    
    var friend = [friends]()
    
    
    func loadSampleMeals() {
        let photo1 = UIImage(named: "men")!
        let meal1 = friends(name: "Caprese Salad", photo: photo1 )!
        
        let photo2 = UIImage(named: "men")!
        let meal2 = friends(name: "Chicken and Potatoes", photo: photo2 )!
        
        let photo3 = UIImage(named: "men")!
        let meal3 = friends(name: "Pasta with Meatballs", photo: photo3 )!
        
        friend += [meal1, meal2, meal3]
    }
    
    
    @IBAction func addFriends(sender: AnyObject) {
        OneTableViewCell.removeFromSuperview()
        
    }
    
    
    @IBAction func addFriendsTwo(sender: AnyObject) {
        TwoTableVIewCell.removeFromSuperview()
    }
    
    
    @IBAction func addFriendsThree(sender: AnyObject) {
        ThreeTableVIewCell.removeFromSuperview()
    }
    
    
    @IBAction func addFriendsFour(sender: AnyObject) {
        
        FourTableVIewCell.removeFromSuperview()
        
    }
    
    
    
    @IBAction func addFriendsFive(sender: AnyObject) {
        
        FiveTableVIewCell.removeFromSuperview()
    }
    
    
    
    @IBOutlet weak var NameLabel: UILabel!
    


    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // MARK: - Table view data source
//
//    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }
//
//    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 0
//    }
//
    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
