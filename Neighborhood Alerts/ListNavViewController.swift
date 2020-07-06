//
//  ListNavViewController.swift
//  Neighborhood Alerts
//
//  Created by Jeffrey Wang on 7/5/20.
//  Copyright © 2020 MyWikis LLC. All rights reserved.
//

import UIKit

class ListNavViewController: UINavigationController {
    @IBOutlet weak var navBar: UINavigationBar!
    @IBOutlet weak var tabBar: UITabBarItem!
    
    override func viewWillAppear(_ animated: Bool) {
        // Dark mode
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        var context = appDelegate.persistentContainer.viewContext
        if CoreDataHandler.darkMode(context: &context) {
            overrideUserInterfaceStyle = .dark
        } else {
            overrideUserInterfaceStyle = .light
        }
    }
}
