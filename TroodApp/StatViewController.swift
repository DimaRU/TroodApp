//
//  StatViewController.swift
//  TroodApp
//
//  Created by Dmitriy Borovikov on 04.10.16.
//  Copyright © 2016 Dmitriy Borovikov. All rights reserved.
//

import UIKit
import WebKit

class StatViewController: WebViewController {

    @IBOutlet weak var statWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let barButtonItem = self.navigationItem.leftBarButtonItem!
        let profileImage = UIImage(named: "ava_1.png", in: nil, compatibleWith:nil)
        barButtonItem.image = profileImage?.withRenderingMode(.alwaysOriginal)
        
        fillWebView(subdirectory: "webview/stat")
        
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
