//
//  FirstViewController.swift
//  TroodApp
//
//  Created by Dmitriy Borovikov on 04.10.16.
//  Copyright © 2016 Dmitriy Borovikov. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    
    
    func hideTabBarButtonsTitle() {
//        let tabBarTitleOffset = UIOffsetMake(0,50)
//        let tabBarViews = self.tabBarController!.viewControllers!
//        
//        for controller in tabBarViews {
//            //controller.tabBarItem.title = nil
//            controller.tabBarItem.titlePositionAdjustment = tabBarTitleOffset
//        }
        
        let items = self.tabBarController!.tabBar.items!
        for tabItem in items {
            tabItem.title = ""
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        hideTabBarButtonsTitle()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

