//
//  RecipeModel.swift
//  RecipeListApp2
//
//  Created by Naysean Smith on 2/14/23.
//

import Foundation


class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        
        //  Create an instance of data service and get the data
      
        self.recipes = DataService.getLocalData()
        
 
        
        
        
    }
    
}
