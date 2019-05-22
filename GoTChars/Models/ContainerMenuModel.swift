//
//  ContainerMenuModel.swift
//  GoTChars
//
//  Created by Art Karma on 5/22/19.
//  Copyright © 2019 Art Karma. All rights reserved.
//

import UIKit

// Протокол позволяет вместо стандартных роувалуе будет выводиться на жкран все, что щахочем

enum MenuModel: Int, CustomStringConvertible {
    case Profile, Menu, Contacts, Settings, Logout
    
    var description: String {
        switch self {
        case .Profile: return "Profile"
        case .Menu: return "Menu"
        case .Contacts: return "Contacts"
        case .Settings: return "Settings"
        case .Logout: return "Logout"
        }
    }
    
    var image: UIImage {
        switch self {
        case .Profile: return UIImage(named: "Profile") ?? UIImage()
        case .Menu: return UIImage(named: "Menu") ?? UIImage()
        case .Contacts: return UIImage(named: "Contacts") ?? UIImage()
        case .Settings: return UIImage(named: "Settings") ?? UIImage()
        case .Logout: return UIImage(named: "Exit") ?? UIImage()
        }
    }
}
