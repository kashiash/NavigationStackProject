//
//  ModelDataManager.swift
//  NavigationStackProject
//
//  Created by Jacek Kosiński G on 03/04/2023.
//

import Foundation

class ModelDataManager : ObservableObject {
    @Published var books = Book.exampleBooks()
    @Published var songs = Song.exampleSongs()
    @Published var movies = Movie.exampleMovies()
    
    @Published var fruits = Fruit.fruits
    @Published var countries = Country.exampleCountries()
}
