//
//  RecipeTabView.swift
//  Recipe_List_App
//
//  Created by JAESOON on 2021/03/20.
//

import SwiftUI

struct RecipeTabView: View {
    @EnvironmentObject var model: RecipeModel
    var body: some View {
        TabView {
            
            RecipeFeaturedView()
            .tabItem {
                VStack {
                    Image(systemName: "star.fill")
                    Text("featured")
                    }
                }
            RecipeListView()
                .tabItem {
                    VStack {
                        Image(systemName: "list.bullet")
                        Text("List")
                    }
                }
        }
        .environmentObject(RecipeModel())
        // put on the top of view hierarchy
}
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
