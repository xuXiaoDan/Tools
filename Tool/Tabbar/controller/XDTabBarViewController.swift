//
//  XDTabBarViewController.swift
//  Tool
//
//  Created by xu xiaodan on 2020/4/1.
//  Copyright © 2020 xu xiaodan. All rights reserved.
//

import UIKit

class XDTabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.addChildVC(projectName: "Home", vcName: "HomeController", title: "首页", imageName: "tarbar_icon_home_default", selectImageName: "tarbar_icon_home_pressed")
        self.addChildVC(projectName: "Tool", vcName: "TestViewController", title: "工具", imageName: "tarbar_icon_insurance_default", selectImageName: "tarbar_icon_insurance_pressed")
        self.addChildVC(projectName: "Mine", vcName: "MineViewController", title: "我", imageName: "tarbar_icon_me_default", selectImageName: "tarbar_icon_me_pressed")
        self.addChildVC(projectName: "demo", vcName: "DemoTableViewController", title: "demo", imageName: "tarbar_icon_me_default", selectImageName: "tarbar_icon_me_pressed")
    }
    
    func addChildVC(projectName:String, vcName:String, title:String, imageName:String, selectImageName:String) -> Void {
        
        let vcClass = NSClassFromString("\(projectName).\(vcName)")! as! UIViewController.Type
        let contoller:UIViewController = vcClass.init()
        contoller.title = title
        let nav = UINavigationController.init(rootViewController: contoller)
        nav.tabBarItem.image = UIImage.init(named: imageName)
        nav.tabBarItem.selectedImage = UIImage.init(named: selectImageName)
        self.addChild(nav)
        
    }
    
}
