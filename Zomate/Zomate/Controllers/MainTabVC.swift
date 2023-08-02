//
//  MainTabVC.swift
//  Zomate
//
//  Created by apple on 24/07/2023.
//

import UIKit
import SOTabBar

class MainTabVC : SOTabBarController{
    
    override func loadView() {
        super.loadView()
        SOTabBarSetting.tabBarTintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        SOTabBarSetting.tabBarBackground
        SOTabBarSetting.tabBarCircleSize = CGSize(width: 60, height: 60)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getVC()
        // Do any additional setup after loading the view.
//        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2){
//            self.addTabbarIndicatorView(index: 0, isFirstTime: true)
//        }
    }
    
    // MARK: - GET ALL THE VIEWCONTROLLERS
    
    func getVC(){
        let firstVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AddStoryVC")
        let secondVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "YourStroryVC")
        let thirdVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MessageVC")
        let fourthVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ProfileVC")
        
        firstVC.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "swipe"), selectedImage: UIImage(named: "swipe"))
        secondVC.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "users"), selectedImage: UIImage(named: "users"))
        thirdVC.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "Vector"), selectedImage: UIImage(named: "Vector"))
        fourthVC.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "user"), selectedImage: UIImage(named: "user"))
        
        viewControllers = [firstVC, secondVC, thirdVC, fourthVC]
        
    }
}

// MARK: - Extension of the SOTabBarControllerDelegate

extension MainTabVC: SOTabBarControllerDelegate {
    
    func tabBarController(_ tabBarController: SOTabBarController, didSelect viewController: UIViewController) {
        print(viewController.tabBarItem.title ?? "")
    }
}

