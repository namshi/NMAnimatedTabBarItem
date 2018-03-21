//
//  ViewController.swift
//  NMAnimatedTabBarItem
//
//  Created by dbalunayak@gmail.com on 03/20/2018.
//  Copyright (c) 2018 Namshi. All rights reserved.
//

import UIKit
import NMAnimatedTabBarItem

enum TabBarPage : Int {
    case history
    case contact
    case diamond
    case favourite
}

class ViewController: UITabBarController , UITabBarControllerDelegate {

    //Create an Instance of type NMAnimateTabBarItem
    var animatedTabBar = NMAnimateTabBarItem()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - UITabBarControllerDelegate
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        let indexOfTab = tabBarController.viewControllers?.index(of:viewController)
        var animationType:NMAnimationtype?
        switch indexOfTab {
        case TabBarPage.history.rawValue?:
            animationType = NMAnimationtype.Bounce
        case TabBarPage.contact.rawValue?:
            animationType = NMAnimationtype.Transition
            animatedTabBar.transitionOptions = UIViewAnimationOptions.transitionFlipFromBottom
        case TabBarPage.diamond.rawValue?:
            animationType = NMAnimationtype.Frame
            var imagesArray :[String] = []
            for index in 0...35 {
                imagesArray.append("frame_\(index)")
            }
            animatedTabBar.createImagesArray(imagesArray)
        case TabBarPage.favourite.rawValue?:
            animationType = NMAnimationtype.Rotation
            animatedTabBar.direction = NMRotationDirection.right
        default:
            break
        }
        animatedTabBar.animateTabBarItem(self.tabBar, indexOfTab!, animationType!)
        return true
    }

}

