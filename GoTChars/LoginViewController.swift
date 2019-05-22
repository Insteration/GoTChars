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
    
    var signInButton: GIDSignInButton!
    
    let myButton: UIButton = {
        let button = UIButton(type: .system)
//        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
//        button.backgroundColor = .green
        button.setTitle("Enter", for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        GIDSignIn.sharedInstance()?.uiDelegate = self
        setupSignInButton()
        
        view.addSubview(myButton)
        
        myButton.leadingAnchor.constraint(equalTo: signInButton.leadingAnchor).isActive = true
        myButton.trailingAnchor.constraint(equalTo: signInButton.trailingAnchor).isActive = true
        myButton.topAnchor.constraint(equalTo: signInButton.bottomAnchor, constant: 12).isActive = true
        
    }
    
    private func setupSignInButton() {
        signInButton = GIDSignInButton(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        signInButton.center = view.center
        view.addSubview(signInButton)
    }
    
    @objc func signOutButton() {
        GIDSignIn.sharedInstance()?.signOut()
    }
    
    @objc func buttonAction(sender: UIButton!) {
        if UserModel.info.status != 0 {
            let VC1 = self.storyboard!.instantiateViewController(withIdentifier: "MainVC") as! MainViewController
            let navController = UINavigationController(rootViewController: VC1) // Creating a navigation controller with VC1 at the root of the navigation stack.
            self.present(navController, animated:true, completion: nil)
        }
    }
}


