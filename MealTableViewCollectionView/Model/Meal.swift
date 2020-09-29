//
//  lionKingCharacters.swift
//  Lion_King_Characters
//
//  Created by Julian Rich on 28/9/20.
//  Copyright © 2020 Julian Rich. All rights reserved.
//

import Foundation

enum mealType:String{
    case breakfast = "Breakfast", lunch = "Lunch", dinner = "Dinner"
}



struct Meal{
    
    private (set) var mealID:Int
    private (set) var mealType:mealType
    private (set) var mealName:String
    private (set) var mealImage:String
    
    
    init(mealID:Int, mealType:mealType, mealName:String, mealImage:String){
        self.mealID = mealID
        self.mealType = mealType
        self.mealName = mealName
        self.mealImage = mealImage
    }
    
    
}


var meal1 = Meal(mealID: 0001, mealType: mealType.breakfast, mealName: "Bacon and eggs", mealImage: "baconAndEggs"
)
