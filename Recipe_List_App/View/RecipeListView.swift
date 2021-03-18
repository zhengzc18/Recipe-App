//
//  ContentView.swift
//  Recipe_List_App
//
//  Created by JAESOON on 2021/01/29.
//

import SwiftUI

struct RecipeListView: View {
    
    // Reference the view model
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
        
        NavigationView {
            List(model.recipes) { r in
                
                NavigationLink(
                    destination: RecipeDetailView(recipe: r),
             
                    label: {
                        
                        // MARK: Row item
                        HStack(spacing: 20.0) {
                            Image(r.image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50, alignment: .center)
                                .cornerRadius(5)
                                .clipped()
                            Text(r.name)
                                .font(.headline)
                        }
                    })
                
               
                
            }
            .navigationBarTitle("All Recipes")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
