//
//  CartTableViewController.swift
//  cart
//
//  Created by 林哲右 on 2018/7/15.
//  Copyright © 2018 cart. All rights reserved.
//

import UIKit

class CartTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

  /*  override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }*/

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
  
    @IBOutlet weak var result: UILabel!
    var watch1 = Watch(name: "w1" , price: 13500 , count: 0)
    var watch2 = Watch(name: "w2" , price: 20000 , count: 0)
    var watch3 = Watch(name: "w3" , price: 25000 , count: 0)
    var watch4 = Watch(name: "w4" , price: 30000 , count: 0)
    
    @IBOutlet weak var w1: UILabel!
    @IBOutlet weak var w2: UILabel!
    @IBOutlet weak var w3: UILabel!
    @IBOutlet weak var w4: UILabel!
    
    @IBAction func w1Stepper(_ sender: UIStepper) {
        watch1.setCount(count: Int(sender.value))
        w1.text = watch1.getCount().description
        result.text = getTotal()

    }
    
    @IBAction func w2Stepper(_ sender: UIStepper) {
         watch2.setCount(count: Int(sender.value))
        w2.text = watch2.getCount().description
        result.text = getTotal()
    }
    
    
    @IBAction func w3Stepper(_ sender: UIStepper) {
         watch3.setCount(count: Int(sender.value))
        w3.text = watch3.getCount().description
        result.text = getTotal()
    }
    @IBAction func w4Stepper(_ sender: UIStepper) {
         watch4.setCount(count: Int(sender.value))
        w4.text = watch4.getCount().description
        result.text = getTotal()
    }
    
    
    func getTotal () -> String {
        return (watch1.getTotal()+watch2.getTotal()+watch3.getTotal()+watch4.getTotal()).description
    }

    
    

}


class Watch {
    let name:String
    let price :Int
    var count:Int
    
    init(name:String , price:Int,count:Int){
        self.name=name
        self.price=price
        self.count=count
    }
    
    func getCount () -> Int {
        
        return self.count
    }
    
    func setCount (count : Int) {
        self.count = count
    }
    
    func getTotal () -> Int {
        
        return self.count * self.price
    }
    
}
