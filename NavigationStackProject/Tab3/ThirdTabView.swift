//
//  ThirdTabView.swift
//  NavigationStackProject
//
//  Created by Jacek Kosiński G on 03/04/2023.
//

import SwiftUI

enum SelectionState{
    case book(Book)
    case song(Song)
    case movie(Movie)

    case settings
}

struct ThirdTabView: View {
    @StateObject var model = ModelDataManager()
    var body: some View {
        NavigationStack{
            RootView(model: model)
                .navigationDestination(for: Book.self){ book in
                    BookDetailView(book: book)
                    
                }
                .navigationDestination(for: Song.self){ song in
                    SongDetailView(song: song)
                    
                }
                .navigationDestination(for: Movie.self){ movie in
                    MovieDetailView(movie: movie)
                    
                }

            
        }
    }
}

struct ThirdTabView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdTabView()
    }
}
