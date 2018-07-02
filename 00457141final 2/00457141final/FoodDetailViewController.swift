//
//  FoodDetailViewController.swift
//  00457141final
//
//  Created by User15 on 2018/6/26.
//  Copyright © 2018年 User09. All rights reserved.
//

import UIKit

class FoodDetailViewController: UIViewController {

    var food:Food!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var foodieTextview: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let food = food {
            nameLabel.text = food.name
            addressLabel.text = food.address
            phoneLabel.text = food.phone
            foodieTextview.text = food.foodie
        }
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
