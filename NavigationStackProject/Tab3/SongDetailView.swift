//
//  SongDetailView.swift
//  NavigationStackProject
//
//  Created by Jacek Kosiński G on 03/04/2023.
//

import SwiftUI

struct SongDetailView: View {
    let song: Song
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(song.title)
                .font(.largeTitle)
                .bold()
                .foregroundColor(.primary)
            
            HStack {
                Text("Singer: \(song.singer)")
                    .font(.headline)
                    .foregroundColor(.secondary)
                
                Spacer()
                
                Text("Album: \(song.albumTitle)")
                    .font(.headline)
                    .foregroundColor(.secondary)
            }
            
            Text("Release Date: \(formattedDate(song.releaseDate))")
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

struct SongDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SongDetailView(song: Song.example!)
    }
}
