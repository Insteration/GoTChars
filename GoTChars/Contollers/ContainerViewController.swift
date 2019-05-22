//
//  ContainerViewController.swift
//  GoTChars
//
//  Created by Art Karma on 5/22/19.
//  Copyright © 2019 Art Karma. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController, MainViewControllerDelegate {
    
    var controller: UIViewController!
    var menuViewController: UIViewController!
    var isMove = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureLoginViewController()
    }
    
    private func configureLoginViewController() {
        let mainVC = self.storyboard!.instantiateViewController(withIdentifier: "MainVC") as! MainViewController
//        let mainVC = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as! MainViewController
        mainVC.delegate = self
        controller = mainVC
        view.addSubview(controller.view)
        addChild(controller)
    }
    
    private func configureMainViewController() {
        if menuViewController == nil {
            menuViewController = ContainerMenuViewController()
            view.insertSubview(menuViewController.view, at: 0)
            addChild(menuViewController)
            print("Add Container View Controller")
        }
    }
    
    func showMenuViewController(shouldMove: Bool) {
        if shouldMove {
            UIView.animate(withDuration: 0.5,
                           delay: 0,
                           usingSpringWithDamping: 0.8,
                           initialSpringVelocity: 0,
                           options: .curveEaseInOut,
                           animations: {
                self.controller.view.frame.origin.x = self.controller.view.frame.width - 140
            }) { (finished) in
                
            }
        } else {
            UIView.animate(withDuration: 0.5,
                           delay: 0,
                           usingSpringWithDamping: 0.8,
                           initialSpringVelocity: 0,
                           options: .curveEaseInOut,
                           animations: {
                self.controller.view.frame.origin.x = 0
            }) { (finished) in
                
            }
        }
    }
    
    // MARK: MainViewControllerDelegate
    
    func toggleMenu() {
        configureMainViewController()
        isMove = !isMove
        showMenuViewController(shouldMove: isMove)
    }
    
}
