//
//  ViewController.swift
//  Netflix
//
//  Created by Vlad Sadovodov on 23.04.2024.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        
        let homeViewController = UINavigationController(rootViewController: HomeViewController())
        let upComingController = UINavigationController(rootViewController: UpComingViewController())
        let searchViewController = UINavigationController(rootViewController: SearchViewController())
        let downloadViewController = UINavigationController(rootViewController: DownloadsViewController())
        
        homeViewController.tabBarItem.image = UIImage(systemName: "house")
        upComingController.tabBarItem.image = UIImage(systemName: "play.circle")
        searchViewController.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        downloadViewController.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")
        
        homeViewController.title = "Home"
        upComingController.title = "Coming Soon"
        searchViewController.title = "Top Search"
        downloadViewController.title = "Downloads"
        
        tabBar.tintColor = .label
        
        setViewControllers([homeViewController, upComingController, searchViewController, downloadViewController], animated: true)
    }
    


}

