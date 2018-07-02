//
//  NetListViewController.swift
//  00457141final
//
//  Created by User15 on 2018/6/27.
//  Copyright © 2018年 User09. All rights reserved.
//

import UIKit

class NetListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "WEB"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let button = sender as! UIButton
        let controller = segue.destination as!
        NetViewController
        controller.sportUrl = button.currentTitle //把按鈕上的名字傳過去
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
