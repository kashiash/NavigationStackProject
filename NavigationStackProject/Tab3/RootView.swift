//
//  RootView.swift
//  NavigationStackProject
//
//  Created by Jacek Kosiński G on 03/04/2023.
//

import SwiftUI

struct RootView: View {
    @ObservedObject var model: ModelDataManager
    var body: some View {
        List{
            Section("Songs") {
                ForEach(model.songs) { song in
                    NavigationLink(song.title, value: song)
                }
            }
            Section("Movies") {
                ForEach(model.movies) { movie in
                    NavigationLink(movie.title, value: movie)
                }
            }
            Section("Countries") {
                ForEach(model.countries) { country in
                    NavigationLink(destination: CountryDetailView(country: country)) {
                        CountryRowView(country: country)
                    }
                }
            }
            
            Section("Books") {
                ForEach(model.books) { book in
                    NavigationLink(book.title, value: book)
                }
            }
            
            Section("Friuts") {
                ForEach(model.fruits) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                    }
                }
            }
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView(model: ModelDataManager())
    }
}
