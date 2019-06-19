//
//  TabBarViewController.swift
//  CryptoApp
//
//  Created by Wellington Bezerra on 6/18/19.
//  Copyright © 2019 Felipe Viberti. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    init() {
        
        super.init(nibName: "TabBarViewController", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let predictionViewController = PredictionViewController()
        
        let walletViewController = WalletViewController()
        
        let marketViewController = MarketViewController()
        
        self.viewControllers = [walletViewController, marketViewController, predictionViewController]
        
        predictionViewController.tabBarItem = UITabBarItem(title: "Previsão", image: UIImage(named: ""), tag: 1)
        walletViewController.tabBarItem = UITabBarItem(title: "Carteira", image: UIImage(named: ""), tag: 2)
        marketViewController.tabBarItem = UITabBarItem(title: "Mercado", image: UIImage(named: ""), tag: 3)
        
        self.configureTabBarController()
    }
    
    private func configureTabBarController() {
        
        self.tabBar.tintColor = UIColor.blue
    }

}
