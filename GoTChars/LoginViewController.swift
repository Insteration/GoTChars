//
//  ViewController.swift
//  GoTChars
//
//  Created by Art Karma on 5/22/19.
//  Copyright © 2019 Art Karma. All rights reserved.
//

import UIKit
import GoogleSignIn

class LoginViewController: UIViewController, GIDSignInUIDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        GIDSignIn.sharedInstance()?.uiDelegate = self
        setupSignInButton()
        
    }

    private func setupSignInButton() {
        let signInButton = GIDSignInButton(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        signInButton.center = view.center
        view.addSubview(signInButton)
    }
    
    @objc func signOutButton() {
        GIDSignIn.sharedInstance()?.signOut()
    }
    
    
}


