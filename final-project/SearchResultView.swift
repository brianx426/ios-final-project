//
//  SearchResultView.swift
//  final-project
//
//  Created by Brian Liu on 4/16/25.
//

import SwiftUI

struct SearchResultView: View {
  @State var meal: Meal
  var body: some View {
    HStack {
      AsyncImage(url: URL(string: "\(meal.strMealThumb)/small")) { phase in
        switch phase {
        case .empty:
          ProgressView()
            .frame(width: 100, height: 100)
        case .success(let image):
          image
            .resizable()
            .scaledToFill()
            .frame(width: 100, height: 100)
            .clipped()
            .cornerRadius(10)
        case .failure:
          Image(systemName: "photo")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(height: 100)
            .foregroundColor(.gray)
        @unknown default:
          EmptyView()
        }
      }
      .padding(.trailing)
      Text("\(meal.strMeal)")
        .foregroundStyle(.black)
        .font(.title2)
    }
  }
}
