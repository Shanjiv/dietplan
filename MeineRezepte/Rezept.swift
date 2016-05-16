//
//  Rezept.swift
//  MeineRezepte
//
//  Created by Shanseevan Kanagaratnam on 16.05.16.
//  Copyright © 2016 Shanseevan Kanagaratnam. All rights reserved.
//

class Rezept {

    var name: String
    var zutaten: [[String:String]]
    
    init(rezeptName: String, dieZutaten: [[String:String]]){
        
        name = rezeptName
        zutaten = dieZutaten
        
    }


}