//
//  FriendTableViewController.swift
//  kidsExercise
//
//  Created by wusuchen on 2016/5/20.
//  Copyright © 2016年 lakst. All rights reserved.
//

import UIKit

class FriendTableViewController: UITableViewController {

    var type: personalType!
    
    @IBAction func addFriend(sender: AnyObject) {
        alert() 
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        
        switch segue.identifier! {
        case "myDetail" :
            
            let mydetail = storyboard!.instantiateViewControllerWithIdentifier("myDetail") as UIViewController
            
            func detail () {
                self.presentViewController(mydetail, animated: true, completion: nil)
            }

        case "One" :
                    let personalController = segue.destinationViewController as! personalRank
            personalController.type =  personalType.One
        case "Two" :
                    let personalController = segue.destinationViewController as! personalRank
            personalController.type = personalType.Two
        case "Three" :
                    let personalController = segue.destinationViewController as! personalRank
            personalController.type = personalType.Three
        case "Four" :
                    let personalController = segue.destinationViewController as! personalRank
            personalController.type = personalType.Four
        case "Five" :
                    let personalController = segue.destinationViewController as! personalRank
            personalController.type = personalType.Five
        case "Six" :
                    let personalController = segue.destinationViewController as! personalRank
            personalController.type = personalType.Six
        case "Seven" :
                    let personalController = segue.destinationViewController as! personalRank
            personalController.type = personalType.Seven
        default:
            break
        }
    }

    @IBOutlet weak var myDeatilButton: UITableViewCell!
    
    @IBOutlet var myDetailButtonAction: [UITableViewCell]!
    
    func alert()  {
        
        let facebook = storyboard!.instantiateViewControllerWithIdentifier("facebookFriends") as UIViewController
        //            let rootViewController = storyboard.instantiateViewControllerWithIdentifier("MainPage") as UIViewController
        let email = storyboard!.instantiateViewControllerWithIdentifier("emailToFriends") as UIViewController
        
        let alertController = UIAlertController(title: "請選擇", message: "", preferredStyle: UIAlertControllerStyle.ActionSheet)
        let callAction = UIAlertAction(title: "從Facebook加朋友", style: UIAlertActionStyle.Default , handler: {
            action in self.presentViewController(facebook, animated: true, completion: nil)
        })
        
        let callAction2 = UIAlertAction(title: "從email邀請", style: UIAlertActionStyle.Default, handler: {
            action in self.presentViewController(email, animated: true, completion: nil) })
        let callAction3 = UIAlertAction(title: "取消", style: UIAlertActionStyle.Cancel, handler: {
            action in  })
        alertController.addAction(callAction)
        alertController.addAction(callAction2)
        alertController.addAction(callAction3)
        
        
        self.presentViewController(alertController, animated: true, completion: nil)
        
        
    }
    
    

   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
            // Do any additional setup after loading the view.
        
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

}
