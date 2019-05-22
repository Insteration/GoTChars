//
//  MainViewController.swift
//  GoTChars
//
//  Created by Art Karma on 5/22/19.
//  Copyright © 2019 Art Karma. All rights reserved.
//

import UIKit
import GoogleSignIn

class MainViewController: UIViewController {
    
    @IBOutlet weak var characterListLabel: UILabel!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userImage: UIImageView!
    
    private var galleryCollectionView = GalleryCollectionView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(galleryCollectionView)
        
        galleryCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        galleryCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        galleryCollectionView.topAnchor.constraint(equalTo: characterListLabel.bottomAnchor, constant: 10).isActive = true
        galleryCollectionView.heightAnchor.constraint(equalToConstant: 350).isActive = true
        
        galleryCollectionView.set(cells: CharactersModel.fetchCharacters())
        
        userImage.layer.cornerRadius = 0.5 * userImage.bounds.size.width
        userNameLabel.text = "Hello, \(UserModel.info.name)"
        userImage.image = UserModel.info.userImage

        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Logout", style: .done, target: self, action: #selector(signOutButton))
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Exit", style: .done, target: self, action: #selector(exit))
        navigationItem.title = "Main"
    }
    
    @objc func signOutButton() {
        dismiss(animated: true, completion: nil)
        GIDSignIn.sharedInstance()?.signOut()
    }
    
    @objc func exit() {
        dismiss(animated: true, completion: nil)
        GIDSignIn.sharedInstance()?.signOut()
    }

}
