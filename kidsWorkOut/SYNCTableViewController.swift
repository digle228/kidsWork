//
//  SYNCTableViewController.swift
//  kidsExercise
//
//  Created by wusuchen on 2016/5/18.
//  Copyright © 2016年 lakst. All rights reserved.
//

import UIKit

class SYNCTableViewController: UITableViewController {

    @IBAction func saveButton(sender: AnyObject) {
        
        alert()

    }
    
    @IBAction func shareButton(sender: AnyObject) {
        
        sharealert() 
        
    }
    @IBAction func cancelButton(sender: AnyObject) {
        let controller = storyboard!.instantiateViewControllerWithIdentifier("MainPage")
        //換頁動畫方式
        controller.modalTransitionStyle = .PartialCurl
        
        self.presentViewController(controller, animated: false) { () -> Void in
        }
        
    }
    
    
    @IBOutlet weak var RunAnimation: UIActivityIndicatorView!
    
    @IBAction func backMainPage(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
//        let controller = storyboard!.instantiateInitialViewController()
//        //換頁動畫方式
//        controller!.modalTransitionStyle = .PartialCurl
//        
//        self.presentViewController(controller!, animated: false) { () -> Void in
//        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        RunAnimation.startAnimating()
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    
    func alert(){
        
        let controller = storyboard!.instantiateViewControllerWithIdentifier("MainPage")
        let alertController = UIAlertController(title: "儲存成功", message: "回到主頁面", preferredStyle: UIAlertControllerStyle.Alert )
        
        
        let callAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Destructive, handler: { action in self.presentViewController(controller, animated: false, completion: nil)
 })
        
        alertController.addAction(callAction)
        self.presentViewController(alertController, animated: true, completion: nil)

        
    }
    
    func sucessalert(){
        
//        let controller = storyboard!.instantiateViewControllerWithIdentifier("MainPage")
//        let backInsamePage = storyboard!.instantiateViewControllerWithIdentifier("SYNCViewController")
        
        
        let alertController = UIAlertController(title: "分享成功", message: "", preferredStyle: UIAlertControllerStyle.Alert )
        
        
        let callAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Destructive, handler: { action in
        })
        
        alertController.addAction(callAction)
        self.presentViewController(alertController, animated: true, completion: nil)
        
        
    }
    

    
    
    func sharealert()  {
        
        
        let alertController = UIAlertController(title: "分享運動記錄", message: "", preferredStyle: UIAlertControllerStyle.ActionSheet)
        let callAction = UIAlertAction(title: "分享到FaceBook", style: UIAlertActionStyle.Default , handler: {
            action in self.sucessalert()
        })
        
        let callAction2 = UIAlertAction(title: "取消", style: UIAlertActionStyle.Cancel, handler: {
            action in  })
        
        alertController.addAction(callAction)
        alertController.addAction(callAction2)
        
        self.presentViewController(alertController, animated: true, completion: nil)
        
        
    }

    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        RunAnimation.stopAnimating()

        
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
    
//    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let headerView = UIView(frame: CGRectMake(0, 0, 375, self.tableView.sectionHeaderHeight))
////        headerView.backgroundColor = UIColor.whiteColor()
//        
//        return headerView
//    }

}
