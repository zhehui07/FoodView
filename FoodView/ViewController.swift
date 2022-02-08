//
//  ViewController.swift
//  FoodView
//
//  Created by Zhehui Yang on 2/7/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tblView: UITableView!
    
    let foodNames = ["baked fish", "cake", "coffee", "fried chicken", "fries", "green tea", "ice cream cone", "salad", "sandwich", "steak"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tblView.delegate = self
        tblView.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as!TableViewCell
        cell.imgViewCell.image = UIImage(named: foodNames[indexPath.row])
        cell.lblCell.text = foodNames[indexPath.row]
        //cell.textLabel?.text = foodNames[indexPath.row]
        
        return cell
    }


}

