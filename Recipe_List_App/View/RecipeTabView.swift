//
//  RecipeTabView.swift
//  Recipe_List_App
//
//  Created by JAESOON on 2021/03/20.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
        TabView {
            Text("Featured View")
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
}
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
