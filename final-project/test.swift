//
//  test.swift
//  final-project
//
//  Created by Brian Liu on 4/17/25.
//

import SwiftUI

struct TestView : View {
  @State private var meal : Meal = MealService.fakeMeal
  var body: some View {
    ForEach(getIngredients(r: meal), id: \.self) {i in
      Text(i)
    }
  }
  
  
  private func getIngredients(r: Meal) -> [String] {
    var ingredients: [String] = []
    var i: Int = 1
    if r.strIngredient1 != nil {
      if r.strIngredient1! != "" {
        ingredients.append("\(i). " + r.strMeasure1! + " " + r.strIngredient1!)
        i += 1
      }
    }
    if r.strIngredient2 != nil {
      if r.strIngredient2! != "" {
        ingredients.append("\(i). " + r.strMeasure2! + " " + r.strIngredient2!)
        i += 1
      }
    }
    if r.strIngredient3 != nil {
      if r.strIngredient3! != "" {
        ingredients.append("\(i). " + r.strMeasure3! + " " + r.strIngredient3!)
        i += 1
      }
    }
    if r.strIngredient4 != nil {
      if r.strIngredient4! != "" {
        ingredients.append("\(i). " + r.strMeasure4! + " " + r.strIngredient4!)
        i += 1
      }
    }
    if r.strIngredient5 != nil {
      if r.strIngredient5! != "" {
        ingredients.append("\(i). " + r.strMeasure5! + " " + r.strIngredient5!)
        i += 1
      }
    }
    if r.strIngredient6 != nil {
      if r.strIngredient6! != "" {
        ingredients.append("\(i). " + r.strMeasure6! + " " + r.strIngredient6!)
        i += 1
      }
    }
    if r.strIngredient7 != nil {
      if r.strIngredient7! != "" {
        ingredients.append("\(i). " + r.strMeasure7! + " " + r.strIngredient7!)
        i += 1
      }
    }
    if r.strIngredient8 != nil {
      if r.strIngredient8! != "" {
        ingredients.append("\(i). " + r.strMeasure8! + " " + r.strIngredient8!)
        i += 1
      }
    }
    if r.strIngredient9 != nil {
      if r.strIngredient9! != "" {
        ingredients.append("\(i). " + r.strMeasure9! + " " + r.strIngredient9!)
        i += 1
      }
    }
    if r.strIngredient10 != nil {
      if r.strIngredient10! != "" {
        ingredients.append("\(i). " + r.strMeasure10! + " " + r.strIngredient10!)
        i += 1
      }
    }
    if r.strIngredient11 != nil {
      if r.strIngredient11! != "" {
        ingredients.append("\(i). " + r.strMeasure11! + " " + r.strIngredient11!)
        i += 1
      }
    }
    if r.strIngredient12 != nil {
      if r.strIngredient12! != "" {
        ingredients.append("\(i). " + r.strMeasure12! + " " + r.strIngredient12!)
        i += 1
      }
    }
    if r.strIngredient13 != nil {
      if r.strIngredient13! != "" {
        ingredients.append("\(i). " + r.strMeasure13! + " " + r.strIngredient13!)
        i += 1
      }
    }
    if r.strIngredient14 != nil {
      if r.strIngredient14! != "" {
        ingredients.append("\(i). " + r.strMeasure14! + " " + r.strIngredient14!)
        i += 1
      }
    }
    if r.strIngredient15 != nil {
      if r.strIngredient15! != "" {
        ingredients.append("\(i). " + r.strMeasure15! + " " + r.strIngredient15!)
        i += 1
      }
    }
    if r.strIngredient16 != nil {
      if r.strIngredient16! != "" {
        ingredients.append("\(i). " + r.strMeasure16! + " " + r.strIngredient16!)
        i += 1
      }
    }
    if r.strIngredient17 != nil {
      if r.strIngredient17! != "" {
        ingredients.append("\(i). " + r.strMeasure17! + " " + r.strIngredient17!)
        i += 1
      }
    }
    if r.strIngredient18 != nil {
      if r.strIngredient18! != "" {
        ingredients.append("\(i). " + r.strMeasure18! + " " + r.strIngredient18!)
        i += 1
      }
    }
    if r.strIngredient19 != nil {
      if r.strIngredient19! != "" {
        ingredients.append("\(i). " + r.strMeasure19! + " " + r.strIngredient19!)
        i += 1
      }
    }
    if r.strIngredient20 != nil {
      if r.strIngredient20! != "" {
        ingredients.append("\(i). " + r.strMeasure20! + " " + r.strIngredient20!)
        i += 1
      }
    }
    return ingredients
  }
}


#Preview {
  TestView()
}
