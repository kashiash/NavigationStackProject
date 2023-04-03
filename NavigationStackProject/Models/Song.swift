    //
    //  Song.swift
    //  NavigationStackProject
    //
    //  Created by Jacek Kosiński G on 03/04/2023.
    //

import Foundation


struct Song:Identifiable, Hashable{
    let id: UUID
    var title: String
    var singer: String
    var albumTitle: String
    var releaseDate: Date
    
    init(title: String, singer: String, albumTitle: String, releaseDate: Date) {
        self.id = UUID()
        self.title = title
        self.singer = singer
        self.albumTitle = albumTitle
        self.releaseDate = releaseDate
    }
    
    
    static let example = exampleSongs().randomElement()
    
    
    static func exampleSongs() -> [Song] {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy/MM/dd"
        
        let songs = [
            Song(title: "Bohemian Rhapsody", singer: "Queen", albumTitle: "A Night at the Opera", releaseDate: dateFormatter.date(from: "1975/10/31")!),
            Song(title: "Imagine", singer: "John Lennon", albumTitle: "Imagine", releaseDate: dateFormatter.date(from: "1971/10/11")!),
            Song(title: "Like a Rolling Stone", singer: "Bob Dylan", albumTitle: "Highway 61 Revisited", releaseDate: dateFormatter.date(from: "1965/08/30")!),
            Song(title: "What's Going On", singer: "Marvin Gaye", albumTitle: "What's Going On", releaseDate: dateFormatter.date(from: "1971/05/21")!),
            Song(title: "Smells Like Teen Spirit", singer: "Nirvana", albumTitle: "Nevermind", releaseDate: dateFormatter.date(from: "1991/09/10")!),
            Song(title: "Hotel California", singer: "Eagles", albumTitle: "Hotel California", releaseDate: dateFormatter.date(from: "1976/12/08")!),
            Song(title: "Stairway to Heaven", singer: "Led Zeppelin", albumTitle: "Led Zeppelin IV", releaseDate: dateFormatter.date(from: "1971/11/08")!),
            Song(title: "I Want to Hold Your Hand", singer: "The Beatles", albumTitle: "Meet the Beatles!", releaseDate: dateFormatter.date(from: "1963/12/26")!),
            Song(title: "Purple Haze", singer: "Jimi Hendrix", albumTitle: "Are You Experienced", releaseDate: dateFormatter.date(from: "1967/05/12")!),
            Song(title: "Superstition", singer: "Stevie Wonder", albumTitle: "Talking Book", releaseDate: dateFormatter.date(from: "1972/10/28")!),
            Song(title: "Billie Jean", singer: "Michael Jackson", albumTitle: "Thriller", releaseDate: dateFormatter.date(from: "1982/11/30")!),
            Song(title: "One", singer: "U2", albumTitle: "Achtung Baby", releaseDate: dateFormatter.date(from: "1991/11/18")!),
            Song(title: "No Woman, No Cry", singer: "Bob Marley & The Wailers", albumTitle: "Natty Dread", releaseDate: dateFormatter.date(from: "1974/10/25")!),
            Song(title: "Like a Prayer", singer: "Madonna", albumTitle: "Like a Prayer", releaseDate: dateFormatter.date(from: "1989/03/21")!),
            Song(title: "Born to Run", singer: "Bruce Springsteen", albumTitle: "Born to Run", releaseDate: dateFormatter.date(from: "1975/08/25")!),
            Song(title: "Creep", singer: "Radiohead", albumTitle: "Pablo Honey", releaseDate: dateFormatter.date(from: "1993/02/22")!),
            Song(title: "Wonderwall", singer: "Oasis", albumTitle: "What's the Story Morning Glory?", releaseDate: dateFormatter.date(from: "1995/10/02")!),
            Song(title: "With or Without You", singer: "U2", albumTitle: "The Joshua Tree", releaseDate: dateFormatter.date(from: "1987/03/09")!),
            Song(title: "Heroes", singer: "David Bowie", albumTitle: "Heroes", releaseDate: dateFormatter.date(from: "1977/10/14")!),
            Song(title: "Let It Be", singer: "The Beatles", albumTitle: "Let It Be", releaseDate: dateFormatter.date(from: "1970/05/08")!),
            Song(title: "Under Pressure", singer: "Queen & David Bowie", albumTitle: "Hot Space", releaseDate: dateFormatter.date(from: "1981/10/26")!),
            Song(title: "Sympathy for the Devil", singer: "The Rolling Stones", albumTitle: "Beggars Banquet", releaseDate: dateFormatter.date(from: "1968/12/06")!),
            Song(title: "London Calling", singer: "The Clash", albumTitle: "London Calling", releaseDate: dateFormatter.date(from: "1979/12/14")!),
            Song(title: "Wish You Were Here", singer: "Pink Floyd", albumTitle: "Wish You Were Here", releaseDate: dateFormatter.date(from: "1975/09/12")!),
            Song(title: "Riders on the Storm", singer: "The Doors", albumTitle: "L.A. Woman", releaseDate: dateFormatter.date(from: "1971/04/19")!),
            Song(title: "Tiny Dancer", singer: "Elton John", albumTitle: "Madman Across the Water", releaseDate: dateFormatter.date(from: "1971/11/05")!),
            Song(title: "Blackbird", singer: "The Beatles", albumTitle: "The Beatles (The White Album)", releaseDate: dateFormatter.date(from: "1968/11/22")!),
            Song(title: "Tangled Up in Blue", singer: "Bob Dylan", albumTitle: "Blood on the Tracks", releaseDate: dateFormatter.date(from: "1975/01/20")!)
            
            
        ]
        return songs
        
    }
}
