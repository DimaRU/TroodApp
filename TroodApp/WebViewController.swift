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

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        webView.reload()
    }
    
    func fillWebView(subdirectory: String)  {
        
        self.view.addSubview(webView)
        self.view.sendSubview(toBack: webView)    //  Send it under storyboard controls
        
        webView.frame = self.view.bounds
        webView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        webView.scrollView.bounces = false
        
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
    

}
