//
//  DetailViewController.swift
//  00457141final
//
//  Created by User15 on 2018/6/27.
//  Copyright © 2018年 User09. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var want: Want!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var foodView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = want.name
        phoneLabel.text = want.phone
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
