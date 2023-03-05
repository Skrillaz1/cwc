//
//  Recipe.swift
//  RecipeListApp2
//
//  Created by Naysean Smith on 2/14/23.
//

import Foundation


class Recipe: Identifiable, Decodable {
    
    var id:UUID?
    var name:String
    var featured:Bool
    var image:String
    var description:String
    var preptime:String
    var cooktime:String
    var totaltime:String
    var servings:Int
    var ingredients:[String]
    var directions:[String]
    
    
}
