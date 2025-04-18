//
//  ContentView.swift
//  final-project
//
//  Created by Brian Liu on 4/15/25.
//

import SwiftUI
import Foundation

struct ContentView: View {
  @State var meal: Meal? = nil
  
  var body: some View {
    Button("Get a Random Recipe") {
      getRandomMeal()
    }
    if let meal = meal {
      Text(meal.strMeal)
      Text(meal.strCategory)
    } else {
      Text("something went wrong blud")
    }
    Text("Placeholder")
  }
  
  
  private func getRandomMeal() {
    Task {
      do {
        let results = try await MealService.getRandomMeal()
        meal = results
      } catch {
        print("Failed to fetch meals: ", error)
      }
    }
  }
}





//#Preview {
//  ContentView()
//}


//      .onAppear {
//        let appearance = UINavigationBarAppearance()
//        appearance.configureWithTransparentBackground()
//        appearance.backgroundColor = .clear
//        appearance.shadowColor = .clear // removes the hairline
//        UINavigationBar.appearance().standardAppearance = appearance
//        UINavigationBar.appearance().scrollEdgeAppearance = appearance
//      }

// the .onAppear code was from ChatGPT

//}


//    ZStack(alignment: .top) {
//      LinearGradient(colors: [Color("color1"), Color("color2")], startPoint: .leading, endPoint: .trailing)
//        .frame(height: 750)
//        .ignoresSafeArea(edges: .top)
//
//    }
