//
//  lionKingViewModel.swift
//  Lion_King_Characters
//
//  Created by Julian Rich on 28/9/20.
//  Copyright © 2020 Julian Rich. All rights reserved.
//
//!!!!!ViewModel files are responsible for taking the model and using it.<-------------------****
//It is not used for creating your model structs/classes/enums.<-----------------------------****

import Foundation
import UIKit

struct MealTestViewModel{
    //Creates a collection to store the objects from the model in.
    private (set) var meals:[Meal] = []
    
    var count:Int{
        return meals.count
    }
    
    
    init()
    {
        loadData()
    }
    
    
    
    //Puts the data into the collection.
    private mutating func loadData(){
        meals.append(meal1)
    }
    
    func getMeal(byIndex index:Int) -> (mealName:String, mealType:mealType, image:UIImage?){
        let mealName = meals[index].mealName
        let mealType = meals[index].mealType
        let image = UIImage(named: meals[index].mealImage)
        
        return(mealName, mealType, image)
    }
    
}
