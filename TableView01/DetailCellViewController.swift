//
//  DetailCellViewController.swift
//  TableView01
//
//  Created by dit03 on 2019. 5. 22..
//  Copyright © 2019년 201835867. All rights reserved.
//

import UIKit

class DetailCellViewController: UIViewController {
    
    @IBOutlet weak var detailCellData: UILabel!
    @IBOutlet weak var detailCellImageView: UIImageView!
    
    var cellData: String?
    var cellImage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        detailCellData.text = cellData
        detailCellImageView.image = UIImage(named: cellImage!)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
