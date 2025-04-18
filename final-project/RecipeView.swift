//
//  RecipeView.swift
//  final-project
//
//  Created by Brian Liu on 4/15/25.
//

import SwiftUI

struct RecipeView : View {
  var recipe: Meal
  
  
  var body: some View {
    
    ScrollView(.vertical) {
      VStack {
        VStack {
          Text(recipe.strMeal)
            .font(.largeTitle)
          
          AsyncImage(url: URL(string: "\(recipe.strMealThumb)/medium")) { phase in
            switch phase {
            case .empty:
              ProgressView()
                .frame(width: 402, height: 402)
            case .success(let image):
              image
                .resizable()
                .scaledToFill()
                .frame(width: 402, height: 402)
                .clipped()
                .cornerRadius(10)
            case .failure:
              Image(systemName: "photo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 402)
                .foregroundColor(.gray)
            @unknown default:
              EmptyView()
            }
          }
        }
        
        
        VStack(alignment: .leading) {
          Text("What you'll need:")
            .font(.title)
            .bold()
          
          ForEach(getIngredients(r: recipe), id: \.self) {ingredient in
            Text(ingredient)
              .padding(.leading)
              .font(.system(size: 20))
          }
          
          Text("The process:")
          HStack {
            Image(systemName: "square")
            Text(recipe.strInstructions)
          }
          Text("Congrats, you made \(recipe.strMeal)")
        }
        .background(.white)
      }
    }
  }
  
  private func getIngredients(r: Meal) -> [String] {
    var ingredients: [String] = []
    if r.strIngredient1 != nil {
      if r.strIngredient1! != "" {
        ingredients.append(r.strMeasure1! + " " + r.strIngredient1!)
      }
    }
    if r.strIngredient2 != nil {
      if r.strIngredient2! != "" {
        ingredients.append(r.strMeasure2! + " " + r.strIngredient2!)
      }
    }
    if r.strIngredient3 != nil {
      if r.strIngredient3! != "" {
        ingredients.append(r.strMeasure3! + " " + r.strIngredient3!)
      }
    }
    if r.strIngredient4 != nil {
      if r.strIngredient4! != "" {
        ingredients.append(r.strMeasure4! + " " + r.strIngredient4!)
      }
    }
    if r.strIngredient5 != nil {
      if r.strIngredient5! != "" {
        ingredients.append(r.strMeasure5! + " " + r.strIngredient5!)
      }
    }
    if r.strIngredient6 != nil {
      if r.strIngredient6! != "" {
        ingredients.append(r.strMeasure6! + " " + r.strIngredient6!)
      }
    }
    if r.strIngredient7 != nil {
      if r.strIngredient7! != "" {
        ingredients.append(r.strMeasure7! + " " + r.strIngredient7!)
      }
    }
    if r.strIngredient8 != nil {
      if r.strIngredient8! != "" {
        ingredients.append(r.strMeasure8! + " " + r.strIngredient8!)
      }
    }
    if r.strIngredient9 != nil {
      if r.strIngredient9! != "" {
        ingredients.append(r.strMeasure9! + " " + r.strIngredient9!)
      }
    }
    if r.strIngredient10 != nil {
      if r.strIngredient10! != "" {
        ingredients.append(r.strMeasure10! + " " + r.strIngredient10!)
      }
    }
    if r.strIngredient11 != nil {
      if r.strIngredient11! != "" {
        ingredients.append(r.strMeasure11! + " " + r.strIngredient11!)
      }
    }
    if r.strIngredient12 != nil {
      if r.strIngredient12! != "" {
        ingredients.append(r.strMeasure12! + " " + r.strIngredient12!)
      }
    }
    if r.strIngredient13 != nil {
      if r.strIngredient13! != "" {
        ingredients.append(r.strMeasure13! + " " + r.strIngredient13!)
      }
    }
    if r.strIngredient14 != nil {
      if r.strIngredient14! != "" {
        ingredients.append(r.strMeasure14! + " " + r.strIngredient14!)
      }
    }
    if r.strIngredient15 != nil {
      if r.strIngredient15! != "" {
        ingredients.append(r.strMeasure15! + " " + r.strIngredient15!)
      }
    }
    if r.strIngredient16 != nil {
      if r.strIngredient16! != "" {
        ingredients.append(r.strMeasure16! + " " + r.strIngredient16!)
      }
    }
    if r.strIngredient17 != nil {
      if r.strIngredient17! != "" {
        ingredients.append(r.strMeasure17! + " " + r.strIngredient17!)
      }
    }
    if r.strIngredient18 != nil {
      if r.strIngredient18! != "" {
        ingredients.append(r.strMeasure18! + " " + r.strIngredient18!)
      }
    }
    if r.strIngredient19 != nil {
      if r.strIngredient19! != "" {
        ingredients.append(r.strMeasure19! + " " + r.strIngredient19!)
      }
    }
    if r.strIngredient20 != nil {
      if r.strIngredient20! != "" {
        ingredients.append(r.strMeasure20! + " " + r.strIngredient20!)
      }
    }
    return ingredients
  }
  
  
}
