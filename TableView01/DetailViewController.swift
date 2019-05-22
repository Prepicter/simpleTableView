//
//  DetailViewController.swift
//  TableView01
//
//  Created by dit03 on 2019. 5. 22..
//  Copyright © 2019년 201835867. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myImageView: UIImageView!
    
    // 배열 데이터 받는 변수 선언
    var dataLabel: String?
    var dataImage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myLabel.text = dataLabel
        myImageView.image = UIImage(named: dataImage!)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func backToViewController(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func saveData(_ sender: Any) {
        myLabel.text = "Data Saved"
    }
    
    
}
