//
//  ReportClientsViewController.swift
//  TroodApp
//
//  Created by Dmitriy Borovikov on 20.10.16.
//  Copyright © 2016 Dmitriy Borovikov. All rights reserved.
//

import UIKit

class ReportClientsViewController: WebViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        fillWebView(subdirectory: "webview/report_clients")
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

    @IBAction func tapExitButton(_ sender: UIBarButtonItem) {
        
        presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
}
