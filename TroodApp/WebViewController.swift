//
//  WebViewController.swift
//  TroodApp
//
//  Created by Dmitriy Borovikov on 05.10.16.
//  Copyright © 2016 Dmitriy Borovikov. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {

    var webView = UIWebView()

    override func viewDidLoad() {
        super.viewDidLoad()

        fillWebView(subdirectory: "webview/events")
        // Do any additional setup after loading the view.
    }

    
    func fillWebView(subdirectory: String)  {
        
        self.view.addSubview(webView)
        self.view.sendSubview(toBack: webView)    //  Send it under storyboard controls
        
        webView.frame = self.view.bounds
        webView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
        if let htmlURL = Bundle.main.url(forResource: "index", withExtension: "html", subdirectory: subdirectory) {
            print(htmlURL)
            let reqest = URLRequest(url: htmlURL)
            webView.loadRequest(reqest)
        }
        
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
