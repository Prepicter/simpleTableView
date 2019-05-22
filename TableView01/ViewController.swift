//
//  ViewController.swift
//  TableView01
//
//  Created by dit03 on 2019. 5. 8..
//  Copyright © 2019년 201835867. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var myTableView: UITableView!
    
    var animals = ["Cat", "Horse", "Pig", "Whale", "Dog", "Bird"]
    var year = ["3", "5", "2", "6", "8", "2"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTableView.dataSource = self
        myTableView.delegate = self
        // navigationBar Title
        self.title = "동물농장"
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = myTableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let myRow = indexPath.row
        myCell.textLabel?.text = animals[myRow]
        myCell.detailTextLabel?.text = "section \(indexPath.section) row \(myRow)"
        myCell.imageView?.image = UIImage(named: animals[myRow])
        return myCell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
            return 1
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "section header \(section)"
        } else {
            return "section header \(section)"
        }
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "section footer \(section)"
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("클릭 : \(indexPath.row)")
    }
    

}

