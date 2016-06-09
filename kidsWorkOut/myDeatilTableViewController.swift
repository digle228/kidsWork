//
//  myDeatilTableViewController.swift
//  kidsExercise
//
//  Created by wusuchen on 2016/5/20.
//  Copyright © 2016年 lakst. All rights reserved.
//

import UIKit

class myDeatilTableViewController: UITableViewController, UIImagePickerControllerDelegate {



   
    
    @IBAction func savePersonal(sender: AnyObject) {
        alert()
    }
    
    
    @IBAction func cancelPersonal(sender: AnyObject) {

        
        self.dismissViewControllerAnimated(true, completion: nil)

        
    }
    
    
    
    
    @IBAction func backPage(sender: AnyObject) {
        let controller = self.storyboard?.instantiateViewControllerWithIdentifier("friendMainPage")
        //換頁動畫方式
        controller!.modalTransitionStyle = .PartialCurl
        
       
//        self.presentViewController(controller, animated: false) { () -> Void in
//        }
//        self.presentViewController(controller!, animated: false, completion: nil)

        self.dismissViewControllerAnimated(true, completion: nil)

    }

    
    
    
    func alert(){
        
        let alertController = UIAlertController(title: "儲存成功", message: "", preferredStyle: UIAlertControllerStyle.Alert )
        
        
        let callAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Destructive, handler: { action in self.dismissViewControllerAnimated(true, completion: nil)

        })
        
        alertController.addAction(callAction)
        self.presentViewController(alertController, animated: true, completion: nil)
        
        
    }

  
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
