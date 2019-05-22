//
//  CharactesModel.swift
//  GoTChars
//
//  Created by Art Karma on 5/22/19.
//  Copyright © 2019 Art Karma. All rights reserved.
//

import Foundation
import UIKit

struct CharactersModel {
    
    var mainImage: UIImage
    var characterName: String
    var smallDescription: String
    var status: String
    
    static func fetchCharacters() -> [CharactersModel] {
        
        let firstItem = CharactersModel(mainImage: UIImage(named: "nightking")!, characterName: "Night King", smallDescription: "King", status: "Died")
        let secondItem = CharactersModel(mainImage: UIImage(named: "daenerys")!, characterName: "Daenerys", smallDescription: "Queen", status: "Died")
        let thirdItem = CharactersModel(mainImage: UIImage(named: "tyrion")!, characterName: "Tyrion", smallDescription: "Lord", status: "Alive")
        let fouthItem = CharactersModel(mainImage: UIImage(named: "cersei")!, characterName: "Cersei", smallDescription: "Queen", status: "Died")
        let fifthItem = CharactersModel(mainImage: UIImage(named: "arya")!, characterName: "Arya", smallDescription: "Princess", status: "Alive")
        let sixthItem = CharactersModel(mainImage: UIImage(named: "snow")!, characterName: "John", smallDescription: "Bastard", status: "Alive")
        let seventhItem = CharactersModel(mainImage: UIImage(named: "sansa")!, characterName: "Sansa", smallDescription: "Queen", status: "Alive")
        let eightItem = CharactersModel(mainImage: UIImage(named: "podrick")!, characterName: "Podrick", smallDescription: "Bastard", status: "Alive")
        let ninthItem = CharactersModel(mainImage: UIImage(named: "ramsay")!, characterName: "Ramsay", smallDescription: "Prince", status: "Died")
        let tenthItem = CharactersModel(mainImage: UIImage(named: "melisandre")!, characterName: "Melisandre", smallDescription: "Priestess", status: "Died")
        
        return [firstItem, secondItem, thirdItem, fouthItem, fifthItem, sixthItem, seventhItem, eightItem, ninthItem, tenthItem]
    }
}

struct Constants {
    static let leftDistanceToView: CGFloat = 40
    static let rightDistanceToView: CGFloat = 40
    static let galleryMinimumLineSpacing: CGFloat = 10
    static let galleryItemWidth = (UIScreen.main.bounds.width - Constants.leftDistanceToView - Constants.rightDistanceToView - (Constants.galleryMinimumLineSpacing / 2)) / 2
}

