//
//  RecipeModel.swift
//  Recipe_List_App
//
//  Created by JAESOON on 2021/01/29.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        
        // Create an instance of data service and get the data
        self.recipes = DataService.getLocalData()
        
        
    }
}
