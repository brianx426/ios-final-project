//
//  HomeScreenView.swift
//  final-project
//
//  Created by Brian Liu on 4/15/25.
//

import SwiftUI

struct HomeScreenView : View {
  @State private var searchFor: String = "tomato"
  @State private var randomMeal: Meal = MealService.fakeMeal
  
  var body: some View {
    NavigationStack {
      ZStack {
        Image("homebgdarkened")
          .resizable()
          .aspectRatio(contentMode: .fill)
          .frame(minWidth: 0, maxWidth: .infinity)
          .ignoresSafeArea()
        VStack(alignment: .center) {
          
          
          Text("Zis is a Recipe Tracker")
            .foregroundStyle(.white)
            .font(.system(size: 36))
            .padding(.vertical, 50)
          
          
          HStack {
            TextField("", text: $searchFor)
              .foregroundStyle(.white)
              .padding()
              .background(.black)
              .clipShape(RoundedRectangle(cornerRadius: 12.5))
              .font(.title2)
              .padding(.vertical)
              .padding(.leading)
              .opacity(0.5)
              .textInputAutocapitalization(.never)
            
            NavigationLink {
              SearchResultsView(query: $searchFor)
            } label: {
              Image(systemName: "arrow.right.circle")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.white)
                .background(.orange)
                .clipShape(.circle)
                .frame(maxHeight: 40)
            }
          }
          .padding(.top)
          .padding(.trailing)
          Text("or")
            .font(.system(size: 24))
            .foregroundStyle(.white)
            .padding(.vertical)
          NavigationLink {
            RecipeView(recipe: randomMeal)
          } label: {
            Text("Try a Random Recipe")
              .font(.title2)
              .foregroundStyle(.white)
              .padding()
              .padding(.horizontal, 60)
              .background(.orange)
              .clipShape(RoundedRectangle(cornerRadius: 8))
          }
          .padding(.vertical)
        }
      }
      .onAppear {
        getRandomMeal()
      }
    }
  }
  
  private func getRandomMeal() {
    Task {
      do {
        let results = try await MealService.getRandomMeal()
        randomMeal = results
      } catch {
        print("Failed to fetch meals: ", error)
      }
    }
  }
}


#Preview {
  HomeScreenView()
}
