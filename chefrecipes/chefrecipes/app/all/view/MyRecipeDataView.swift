//
//  MyRecipeData.swift
//  chefrecipes
//
//  Created by Ruben on 11/6/24.
//

import SwiftUI

struct MyRecipeDataView: View {
    
    @State var recipe: MyRecipeModel
    
    var body: some View {
        VStack(alignment: .leading) {
            
            VStack(alignment: .leading) {
                Text(recipe.title)
                    .font(.headline)
                Text(recipe.description)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding()
            
            VStack(alignment: .leading) {
                Text("Ingredients")
                    .font(.headline)
                ForEach(recipe.ingredients, id: \.self) { ingredient in
                    Text("• \(ingredient)")
                        .font(.subheadline)
                }
            }
            .padding([.leading, .bottom, .trailing])
            
            VStack(alignment: .leading) {
                Text("Steps")
                    .font(.headline)
                
                ForEach(recipe.steps, id: \.self) { step in
                    Text("• \(step)")
                        .font(.subheadline)
                    
                }
            }
            .padding([.leading, .bottom, .trailing])
        }
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 5)
        .padding([.leading, .trailing])
                    
    }
}

#Preview {
    MyRecipeDataView(recipe: .init(title: "", description: "", fromUser: "", ingredients: [], steps: [], savedBy: []))
}
