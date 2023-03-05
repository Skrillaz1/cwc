//
//  DetailDataView.swift
//  RecipeListApp2
//
//  Created by Naysean Smith on 2/16/23.
//

import SwiftUI

struct RecipeDataView: View {
    
    var recipe:Recipe
    
    var body: some View {
        ScrollView{
         
            
            VStack {
                
                
                //MARK: Recipe Image
                Image(recipe.image)
                    .resizable()
                    .frame(height: 200.0)
                    .scaledToFill()
                
                
                //MARK: Ingredients
                VStack(alignment: .leading){
                    
                    Text("Ingredients")
                        .font(.headline)
                        .padding(.vertical , 5)
                    
                    ForEach (recipe.ingredients, id:\.self) { item in
                        Text("-" + item)
                        
                    }
                   
                    
                    // MARK: Diviider
                        Divider()
                    
                    // MARK: Directions
                    VStack(alignment: .leading){
                        
                        Text("Directions")
                            .font(.headline)
                            .padding(.vertical, 5.0)
                        
                        ForEach (0..<recipe.directions.count, id:\.self) { index in
                            Text(String(index + 1) + ". " + recipe.directions[index])
                                .padding(.bottom, 5)
                        }
                    }
              } .padding(.horizontal)

            }
            
        
        }
        .navigationBarTitle(recipe.name)
    }
}

struct DetailDataView_Previews: PreviewProvider {
    static var previews: some View {
       // CREATE A dummy recipe in detail view to see preview
        let model = RecipeModel()
        
        RecipeDataView(recipe: model.recipes[0])
    }
}
