//
//  ViewController.swift
//  RickAndMorty
//
//  Created by JeanSeb on 06/03/2023.
//

import UIKit

final class RMTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabs()
    }

    private func setUpTabs() {
        let characterVC = RMCharacterViewController()
        let locationVC = RMLocationViewController()
        let episodeVC = RMEpisodeViewController()
        let settingsVC = RMSettingsViewController()
        
        characterVC.navigationItem.largeTitleDisplayMode = .automatic
        locationVC.navigationItem.largeTitleDisplayMode = .automatic
        episodeVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic
        
        let characterVCNav = UINavigationController(rootViewController: characterVC)
        let locationVCNav = UINavigationController(rootViewController: locationVC)
        let episodeVCNav = UINavigationController(rootViewController: episodeVC)
        let settingsVCNav = UINavigationController(rootViewController: settingsVC)
        
        characterVCNav.tabBarItem = UITabBarItem(title: "Characters", image: UIImage(systemName: "person"), tag: 1)
        locationVCNav.tabBarItem = UITabBarItem(title: "Locations", image: UIImage(systemName: "globe"), tag: 2)
        episodeVCNav.tabBarItem = UITabBarItem(title: "Episodes", image: UIImage(systemName: "tv"), tag: 3)
        settingsVCNav.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 4)
        
        for nav in [characterVCNav,locationVCNav,episodeVCNav,settingsVCNav] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers([characterVCNav,locationVCNav,episodeVCNav,settingsVCNav], animated: true)
    }
}

