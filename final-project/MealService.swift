//
//  MealService.swift
//  final-project
//
//  Created by Brian Liu on 4/16/25.
//
import Foundation

class MealService {
  static func getRandomMeal() async throws -> Meal {
    let url = URL(string: "https://themealdb.com/api/json/v1/1/random.php")!
    let (data, _) = try await URLSession.shared.data(from: url)
    
    let decoder = JSONDecoder()
    let meals = try decoder.decode(Meals.self, from: data)
    return meals.meals[0]
  }
  
  static func searchForMeals(query: String) async throws -> [Meal] {
    let urlString = "https://themealdb.com/api/json/v1/1/search.php?s=\(query)"
    let url = URL(string: urlString)!
    let (data, _) = try await URLSession.shared.data(from: url)
    
    let decoder = JSONDecoder()
    let meals = try decoder.decode(Meals.self, from: data)
    return meals.meals
  }
  
  static var fakeMeal = Meal(idMeal: "dummyMeal", strMeal: "Dummy Meal", strMealAlternate: nil, strCategory: "none", strArea: "none", strInstructions: "none", strMealThumb: "none", strTags: nil, strYoutube: nil, strIngredient1: "stuff", strIngredient2: "", strIngredient3: nil, strIngredient4: nil, strIngredient5: nil, strIngredient6: nil, strIngredient7: nil, strIngredient8: nil, strIngredient9: nil, strIngredient10: nil, strIngredient11: nil, strIngredient12: "more stuff", strIngredient13: nil, strIngredient14: nil, strIngredient15: nil, strIngredient16: nil, strIngredient17: nil, strIngredient18: nil, strIngredient19: nil, strIngredient20: nil, strMeasure1: "1 cup", strMeasure2: "", strMeasure3: nil, strMeasure4: nil, strMeasure5: nil, strMeasure6: nil, strMeasure7: nil, strMeasure8: nil, strMeasure9: nil, strMeasure10: nil, strMeasure11: nil, strMeasure12: "5 lbs", strMeasure13: nil, strMeasure14: nil, strMeasure15: nil, strMeasure16: nil, strMeasure17: nil, strMeasure18: nil, strMeasure19: nil, strMeasure20: nil, strSource: nil, strImageSource: nil, strCreativeCommonsConfirmed: nil, dateModified: nil)
}
