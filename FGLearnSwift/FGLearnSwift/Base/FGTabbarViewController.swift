//
//  FGTabbarViewController.swift
//  FGLearnSwift
//
//  Created by 洪海睿 on 2020/9/17.
//  Copyright © 2020 洪海睿. All rights reserved.
//

import UIKit

class FGTabbarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.barTintColor = UIColor.mainBackgroundColor
        let searchVC = FGSearchViewController()
        let searchNav = FGNavViewController(rootViewController: searchVC)
        searchNav.tabBarItem.image = UIImage(named: "tabbar_search")
        
        let hotVC = FGHotViewController()
        let hotNav = FGNavViewController(rootViewController: hotVC)
        hotNav.tabBarItem.image = UIImage(named: "tabbar_hot")
        
        let newsVC = FGNewsViewController()
        let newsNav = FGNavViewController(rootViewController: newsVC)
        newsNav.tabBarItem.image = UIImage(named: "tabbar_news")
        
        let starVC = FGStarViewController()
        let starNav = FGNavViewController(rootViewController: starVC)
        starNav.tabBarItem.image = UIImage(named: "tabbar_star")
        
        let myVC = FGMyViewController()
        let myNav = FGNavViewController(rootViewController: myVC)
        myNav.tabBarItem.image = UIImage(named: "tabbar_my")
        
        addChild(hotNav)
        addChild(newsNav)
        addChild(starNav)
        addChild(searchNav)
        addChild(myNav)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
