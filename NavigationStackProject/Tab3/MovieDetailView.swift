//
//  MovieDetailView.swift
//  NavigationStackProject
//
//  Created by Jacek Kosiński G on 03/04/2023.
//

import SwiftUI

struct MovieDetailView: View {
    let movie: Movie
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(movie.title)
                .font(.largeTitle)
                .bold()
                .foregroundColor(.primary)
            
            HStack {
                Text("Director: \(movie.directorName)")
                    .font(.headline)
                    .foregroundColor(.secondary)
                
                Spacer()
                
                Text("Producer: \(movie.producerName)")
                    .font(.headline)
                    .foregroundColor(.secondary)
            }
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Main Actors:")
                    .font(.headline)
                    .foregroundColor(.primary)
                
                ForEach(movie.mainActors, id: \.self) { actor in
                    Text(actor)
                        .font(.body)
                        .foregroundColor(.secondary)
                }
            }
            
            Text("Release Date: \(formattedDate(movie.releaseDate))")
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
        .padding()
        .navigationBarTitleDisplayMode(.inline)
    }
    
    func formattedDate(_ date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        return dateFormatter.string(from: date)
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(movie: Movie.exampleMovies().randomElement()!)
    }
}
