//
//  DataService.swift
//  RecipeListApp2
//
//  Created by  on 2/14/23.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [Recipe] {
        
        // Parse local json file
        
        // Get a url path to the json file
        
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        // Check if pathString is not nil, otherwise ...
        guard pathString != nil else {
            return [Recipe]()
        }
        
       
        // Create a url object
       let url = URL(fileURLWithPath: pathString!)
        
  
        
        do {
            // Create a data object
            let data = try Data(contentsOf: url)
            
            
            // Decode the data with a json decoder
            let decoder = JSONDecoder()
            
            do {
                
                let recipeData = try decoder.decode([Recipe].self, from: data)
              
                // add unique IDs
                for r in recipeData {
                    r.id = UUID()
                }
             
                //Return the recipes
                return recipeData
                
                
                
            } catch {
                // error with parsing json
                print(error)
                
            }
            
           
            
         
            
        }
        catch{
            //error with getting data
            print(error)
        }
        
      
        return [Recipe]()
    }
}
