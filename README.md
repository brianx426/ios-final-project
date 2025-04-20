# iOS Bootcamp Final Project

This is a recipe searcher and tracker created with [themealdb's API](https://themealdb.com/api.php)

I made use of many tools, such as JSONDecoders, AsyncImages, Binding and State variables, navigationStacks, navigationLinks, Codable structs, and user input tools.

This project contains the following
1. A `ForEach` with reusable subviews
2. A `@State` property
3. Some user input (`TextField`)
4. My own `@Binding` properties
5. Data from an API endpoint: [https://themealdb.com/api.php]
6. A Manager class to handle request methods (`MealService`)
7. JSON Decoding
8. Codable Structs

Features
* Recipe Search
* Random Recipe
* A page for each recipe that lists the ingredients and steps to make the recipe
* Images of each recipe

Obstacles I Faced
* The struct for the API was a little annoying to work with because it listed up to 20 ingredients and the measurements for each ingredient separately.
* I did not know how to load an image from the web onto my app.
* My MacBook was not a fan of Xcode at times (neither was I)
![My activity monitor screen showing my ram being gobbled up]()
