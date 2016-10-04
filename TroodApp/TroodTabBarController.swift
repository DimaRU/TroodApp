//
//  TroodTabBarController.swift
//  TroodApp
//
//  Created by Dmitriy Borovikov on 04.10.16.
//  Copyright © 2016 Dmitriy Borovikov. All rights reserved.
//

import UIKit

class TroodTabBarController: UITabBarController {

    
    func hideTabBarButtonsTitle() {
        //        let tabBarTitleOffset = UIOffsetMake(0,50)
        //        let tabBarViews = self.tabBarController!.viewControllers!
        //
        //        for controller in tabBarViews {
        //            //controller.tabBarItem.title = nil
        //            controller.tabBarItem.titlePositionAdjustment = tabBarTitleOffset
        //        }
        
        let items = self.tabBar.items!
        for tabItem in items {
            tabItem.title = ""
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        hideTabBarButtonsTitle()
        
        //self.tabBar.barTintColor! = UIColor.black
        
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
