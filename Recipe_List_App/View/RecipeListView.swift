//
//  ContentView.swift
//  Recipe_List_App
//
//  Created by JAESOON on 2021/01/29.
//

import SwiftUI

struct RecipeListView: View {
    
    // Reference the view model
    @EnvironmentObject var model:RecipeModel
    
    var body: some View {
        //First
        NavigationView {
            
            VStack(alignment: .leading) {
                // Fourth
                Text("All Recipes")
                    .bold()
                    .padding(.top, 40)
                    .padding(.leading)
                    .font(.largeTitle)
                
                // Second
        ScrollView {
            LazyVStack (alignment: .leading){
        ForEach(model.recipes) { r in
                            
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
                .foregroundColor(.black)
                                    }
                                })
                            
                            
                            
                        }
                    }
                }
                .navigationBarHidden(true) //Third
                .padding(.leading)
                
            }
        }
    }
}
struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
            .environmentObject(RecipeModel())
    }
}
