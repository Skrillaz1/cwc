//
//  ContentView.swift
//  RecipeListApp2
//
//  Created by Naysean Smith on 2/14/23.
//

import SwiftUI

struct RecipeListView: View {
       
    
    // Reference to model
     @ObservedObject var model = RecipeModel ()
        
        var body: some View {
          
            
            
            NavigationView {
                List(model.recipes) {r in
                    
                    NavigationLink(destination: RecipeDataView(recipe:r), label:   {  HStack(spacing: 20.0) {
                        Image(r.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50, alignment: .center)
                            .clipped()
                            .cornerRadius(5)
                        
                        Text(r.name)}
                    })
                    
                    
                
                }.navigationBarTitle("All Recipes")
            }
            
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
