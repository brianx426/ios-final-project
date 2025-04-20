//
//  SearchResultsView.swift
//  final-project
//
//  Created by Brian Liu on 4/15/25.
//

import SwiftUI

struct SearchResultsView : View {
  @Binding var query: String
  @State private var meals: [Meal]? = nil
  @State private var doneSearching: Bool = false
  
  var body: some View {
    NavigationStack {
      VStack(alignment: .center, spacing: 24) {
        ScrollView(.vertical) {
          if let meals = meals {
            VStack(alignment: .leading, spacing: 12) {
              Text("Search Results for \"\(query)\"")
                .font(.title2)
                .bold()
              
              LazyVStack(alignment: .leading, spacing: 16) {
                ForEach(meals, id: \.self) { meal in
                  NavigationLink {
                    RecipeView(recipe: meal)
                  } label: {
                    SearchResultView(meal: meal)
                  }
                }
              }
            }
            .padding(.horizontal)
          } else {
            if doneSearching {
              Spacer()
              VStack(alignment: .center, spacing: 16) {
                Text("We could not find \"\(query)\", not even with x-ray vision")
                  .font(.largeTitle)
                  .padding(.horizontal)
                Text("Try another search")
                  .font(.title)
              }
              Spacer()
            } else {
              Text("Searching for \(query)")
                .padding(.horizontal)
            }
          }
        }
      }
      .onAppear {
        query = makeQueryValid(query: query)
        search(query: query)
        query = revertQuery(query: query)
      }
    }
  }
  
  private func makeQueryValid(query: String) -> String {
    return query.replacingOccurrences(of: " ", with: "%20")
  }
  
  private func revertQuery(query: String) -> String {
    return query.replacingOccurrences(of: "%20", with: " ")
  }
  
  private func search(query: String) {
    Task {
      do {
        let results = try await MealService.searchForMeals(query: query)
        meals = results
      } catch {
        print("Failed to fetch meals: ", error)
      }
      doneSearching.toggle()
    }
  }
}
