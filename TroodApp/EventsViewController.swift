//
//  EventsViewController.swift
//  TroodApp
//
//  Created by Dmitriy Borovikov on 05.10.16.
//  Copyright © 2016 Dmitriy Borovikov. All rights reserved.
//

import UIKit

class EventsViewController: UIViewController {

    var webView = UIWebView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let barButtonItem = self.navigationItem.leftBarButtonItem!
        let profileImage = UIImage(named: "ava_1.png", in: nil, compatibleWith:nil)
        barButtonItem.image = profileImage?.withRenderingMode(.alwaysOriginal)
        
        fillWebView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func fillWebView()  {

        self.view.addSubview(webView)
        self.view.sendSubview(toBack: webView)    //  Send it under storyboard controls
        //Размер + положение на экране
        webView.frame = self.view.bounds
        //shortest way | old-school
        webView.autoresizingMask = [.flexibleHeight, .flexibleWidth]

        // Fill webview
        //        let request = URLRequest(url: URL(string: "https://www.ya.ru")!)
        //        statWebView.loadRequest(request)
        
        if let htmlURL = Bundle.main.url(forResource: "index", withExtension: "html") {
            //, subdirectory: "events") {
            print(htmlURL)
            let reqest = URLRequest(url: htmlURL)
            webView.loadRequest(reqest)
        }
        
//        let htmlString = try! NSString(contentsOfFile: htmlURL, encoding:String.Encoding.utf8.rawValue )
//        webView.loadHTMLString(htmlString as String, baseURL: nil)

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
