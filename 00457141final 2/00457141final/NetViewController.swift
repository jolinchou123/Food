//
//  NetViewController.swift
//  00457141final
//
//  Created by User15 on 2018/6/27.
//  Copyright © 2018年 User09. All rights reserved.
//

import UIKit

class NetViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var webView: UIWebView!
    var sportUrl: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = sportUrl+"官網"
        if sportUrl == "WEB" {
            sportUrl = "https://ifoodie.tw/"
        }
        else if sportUrl == "YELP" {
            sportUrl = "https://www.yelp.com"
        }
        webView.delegate = self
        if let url = URL(string: sportUrl) {
            let request = URLRequest(url: url)
            webView.loadRequest(request)
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
