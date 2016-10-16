//
//  WebViewController.swift
//  TroodApp
//
//  Created by Dmitriy Borovikov on 05.10.16.
//  Copyright © 2016 Dmitriy Borovikov. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WKNavigationDelegate {

    var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        webView.reload()
    }
    
    func fillWebView(subdirectory: String)  {
        
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        
        self.view.addSubview(webView)
        self.view.sendSubview(toBack: webView)      // Send it under storyboard controls
        //webView.uiDelegate = self
        webView.navigationDelegate = self
        
        webView.frame = self.view.bounds
        webView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        webView.scrollView.bounces = false
        webView.allowsBackForwardNavigationGestures = true
        
        if let htmlURL = Bundle.main.url(forResource: "index", withExtension: "html", subdirectory: subdirectory) {
            print(htmlURL)
            let reqest = URLRequest(url: htmlURL)
            webView.load(reqest)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        print("------------- navigation request ---------------")
//        dump(navigationAction.navigationType)
//        dump(navigationAction)
        decisionHandler(.allow)
    }

}
