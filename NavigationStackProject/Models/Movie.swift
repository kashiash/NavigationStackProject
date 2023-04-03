//
//  Movie.swift
//  NavigationStackProject
//
//  Created by Jacek Kosiński G on 03/04/2023.
//

import Foundation




struct Movie:Identifiable , Hashable{
    
    let id: UUID
    var title: String
    var mainActors: [String]
    var releaseDate: Date
    var directorName: String
    var producerName: String
    
    init(title: String, mainActors: [String], releaseDate: Date, directorName: String, producerName: String) {
        self.id = UUID()
        self.title = title
        self.mainActors = mainActors
        self.releaseDate = releaseDate
        self.directorName = directorName
        self.producerName = producerName
    }
    
    
    
    static func exampleMovies() -> [Movie] {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy/MM/dd"
        
        let movies = [
            Movie(title: "The Shawshank Redemption", mainActors: ["Tim Robbins", "Morgan Freeman"], releaseDate: dateFormatter.date(from: "1994/09/23")!, directorName: "Frank Darabont", producerName: "Niki Marvin"),
            Movie(title: "The Godfather", mainActors: ["Marlon Brando", "Al Pacino", "James Caan"], releaseDate: dateFormatter.date(from: "1972/03/24")!, directorName: "Francis Ford Coppola", producerName: "Albert S. Ruddy"),
            Movie(title: "Pulp Fiction", mainActors: ["John Travolta", "Samuel L. Jackson", "Uma Thurman"], releaseDate: dateFormatter.date(from: "1994/10/14")!, directorName: "Quentin Tarantino", producerName: "Lawrence Bender"),
            Movie(title: "The Dark Knight", mainActors: ["Christian Bale", "Heath Ledger", "Aaron Eckhart"], releaseDate: dateFormatter.date(from: "2008/07/18")!, directorName: "Christopher Nolan", producerName: "Emma Thomas"),
            Movie(title: "Forrest Gump", mainActors: ["Tom Hanks", "Robin Wright", "Gary Sinise"], releaseDate: dateFormatter.date(from: "1994/07/06")!, directorName: "Robert Zemeckis", producerName: "Wendy Finerman"),
            Movie(title: "Inception", mainActors: ["Leonardo DiCaprio", "Joseph Gordon-Levitt", "Ellen Page"], releaseDate: dateFormatter.date(from: "2010/07/16")!, directorName: "Christopher Nolan", producerName: "Emma Thomas"),
            Movie(title: "Fight Club", mainActors: ["Brad Pitt", "Edward Norton", "Helena Bonham Carter"], releaseDate: dateFormatter.date(from: "1999/10/15")!, directorName: "David Fincher", producerName: "Art Linson"),
            Movie(title: "The Matrix", mainActors: ["Keanu Reeves", "Laurence Fishburne", "Carrie-Anne Moss"], releaseDate: dateFormatter.date(from: "1999/03/31")!, directorName: "Lana Wachowski", producerName: "Joel Silver"),
            Movie(title: "The Lord of the Rings: The Fellowship of the Ring", mainActors: ["Elijah Wood", "Ian McKellen", "Viggo Mortensen"], releaseDate: dateFormatter.date(from: "2001/12/19")!, directorName: "Peter Jackson", producerName: "Barrie M. Osborne"),
            Movie(title: "The Godfather: Part II", mainActors: ["            Al Pacino", "Robert De Niro", "Robert Duvall"], releaseDate: dateFormatter.date(from: "1974/12/20")!, directorName: "Francis Ford Coppola", producerName: "Francis Ford Coppola"),
            Movie(title: "The Empire Strikes Back", mainActors: ["Mark Hamill", "Harrison Ford", "Carrie Fisher"], releaseDate: dateFormatter.date(from: "1980/05/21")!, directorName: "Irvin Kershner", producerName: "Gary Kurtz"),
            Movie(title: "The Lord of the Rings: The Return of the King", mainActors: ["Elijah Wood", "Viggo Mortensen", "Ian McKellen"], releaseDate: dateFormatter.date(from: "2003/12/17")!, directorName: "Peter Jackson", producerName: "Barrie M. Osborne"),
            Movie(title: "Goodfellas", mainActors: ["Robert De Niro", "Ray Liotta", "Joe Pesci"], releaseDate: dateFormatter.date(from: "1990/09/21")!, directorName: "Martin Scorsese", producerName: "Irwin Winkler"),
            Movie(title: "Schindler's List", mainActors: ["Liam Neeson", "Ralph Fiennes", "Ben Kingsley"], releaseDate: dateFormatter.date(from: "1993/12/15")!, directorName: "Steven Spielberg", producerName: "Steven Spielberg"),
            Movie(title: "Saving Private Ryan", mainActors: ["Tom Hanks", "Matt Damon", "Tom Sizemore"], releaseDate: dateFormatter.date(from: "1998/07/24")!, directorName: "Steven Spielberg", producerName: "Ian Bryce"),
            Movie(title: "One Flew Over the Cuckoo's Nest", mainActors: ["Jack Nicholson", "Louise Fletcher", "Michael Berryman"], releaseDate: dateFormatter.date(from: "1975/11/19")!, directorName: "Milos Forman", producerName: "Saul Zaentz"),
            Movie(title: "The Green Mile", mainActors: ["Tom Hanks", "Michael Clarke Duncan", "David Morse"], releaseDate: dateFormatter.date(from: "1999/12/10")!, directorName: "Frank Darabont", producerName: "David Valdes"),
            Movie(title: "Casablanca", mainActors: ["Humphrey Bogart", "Ingrid Bergman", "Paul Henreid"], releaseDate: dateFormatter.date(from: "1942/11/26")!, directorName: "Michael Curtiz", producerName: "Hal B. Wallis"),
            Movie(title: "Gladiator", mainActors: ["Russell Crowe", "Joaquin Phoenix", "Connie Nielsen"], releaseDate: dateFormatter.date(from: "2000/05/05")!, directorName: "Ridley Scott", producerName: "Douglas Wick"),
            Movie(title: "The Silence of the Lambs", mainActors: ["Jodie Foster", "Anthony Hopkins", "Scott Glenn"], releaseDate: dateFormatter.date(from: "1991/02/14")!, directorName: "Jonathan Demme", producerName: "Edward Saxon"),
          
            Movie(title: "The Usual Suspects", mainActors: ["Kevin Spacey", "Gabriel Byrne", "Chazz Palminteri"], releaseDate: dateFormatter.date(from: "1995/08/16")!, directorName: "Bryan Singer", producerName: "Bryan Singer"),
            Movie(title: "The Lord of the Rings: The Two Towers", mainActors: ["Elijah Wood", "Ian McKellen", "Viggo Mortensen"], releaseDate: dateFormatter.date(from: "2002/12/18")!, directorName: "Peter Jackson", producerName: "Barrie M. Osborne"),
            Movie(title: "Eternal Sunshine of the Spotless Mind", mainActors: ["Jim Carrey", "Kate Winslet", "Tom Wilkinson"], releaseDate: dateFormatter.date(from: "2004/03/19")!, directorName: "Michel Gondry", producerName: "Anthony Bregman"),
            Movie(title: "The Departed", mainActors: ["Leonardo DiCaprio", "Matt Damon", "Jack Nicholson"], releaseDate: dateFormatter.date(from: "2006/10/06")!, directorName: "Martin Scorsese", producerName: "Brad Pitt"),
            Movie(title: "The Prestige", mainActors: ["Christian Bale", "Hugh Jackman", "Scarlett Johansson"], releaseDate: dateFormatter.date(from: "2006/10/20")!, directorName: "Christopher Nolan", producerName: "Emma Thomas"),
            Movie(title: "Good Will Hunting", mainActors: ["Robin Williams", "Matt Damon", "Ben Affleck"], releaseDate: dateFormatter.date(from: "1997/12/05")!, directorName: "Gus Van Sant", producerName: "Lawrence Bender"),
            Movie(title: "The Sixth Sense", mainActors: ["Bruce Willis", "Haley Joel Osment", "Toni Collette"], releaseDate: dateFormatter.date(from: "1999/08/06")!, directorName: "M. Night Shyamalan", producerName: "Frank Marshall"),
            Movie(title: "Whiplash", mainActors: ["Miles Teller", "J.K. Simmons", "Melissa Benoist"], releaseDate: dateFormatter.date(from: "2014/10/10")!, directorName: "Damien Chazelle", producerName: "Jason Blum"),
            Movie(title: "Life Is Beautiful", mainActors: ["Roberto Benigni", "Nicoletta Braschi", "Giorgio Cantarini"], releaseDate: dateFormatter.date(from: "1997/12/20")!, directorName: "Roberto Benigni", producerName: "Elda Ferri")

            
            
        ]
        return movies
    }
}

