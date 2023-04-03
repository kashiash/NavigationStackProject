//
//  Book.swift
//  NavigationStackProject
//
//  Created by Jacek Kosiński G on 01/04/2023.
//

import Foundation


struct Book: Identifiable, Hashable {
    var title: String
    var author: String
    var releaseDate: Date
    let id: UUID
    
    init(title: String, author: String, releaseDate: Date) {
        self.title = title
        self.author = author
        self.releaseDate = releaseDate
        self.id = UUID()
    }
    
    static let example =  exampleBooks().first
        
    static func exampleBooks() -> [Book] {

        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy/MM/dd"
        let books = [
            Book(title: "To Kill a Mockingbird", author: "Harper Lee", releaseDate: dateFormatter.date(from: "1960/07/11")!),
            Book(title: "Pride and Prejudice", author: "Jane Austen", releaseDate: dateFormatter.date(from: "1813/01/28")!),
            Book(title: "1984", author: "George Orwell", releaseDate: dateFormatter.date(from: "1949/06/08")!),
            Book(title: "The Catcher in the Rye", author: "J.D. Salinger", releaseDate: dateFormatter.date(from: "1951/07/16")!),
            Book(title: "The Great Gatsby", author: "F. Scott Fitzgerald", releaseDate: dateFormatter.date(from: "1925/04/10")!),
            Book(title: "Moby Dick", author: "Herman Melville", releaseDate: dateFormatter.date(from: "1851/10/18")!),
            Book(title: "Crime and Punishment", author: "Fyodor Dostoevsky", releaseDate: dateFormatter.date(from: "1866/01/01")!),
            Book(title: "Animal Farm", author: "George Orwell", releaseDate: dateFormatter.date(from: "1945/08/17")!),
            Book(title: "War and Peace", author: "Leo Tolstoy", releaseDate: dateFormatter.date(from: "1869/01/01")!),
            Book(title: "The Odyssey", author: "Homer", releaseDate: dateFormatter.date(from: "800/01/01")!),
            Book(title: "Ulysses", author: "James Joyce", releaseDate: dateFormatter.date(from: "1922/02/02")!),
            Book(title: "One Hundred Years of Solitude", author: "Gabriel Garcia Marquez", releaseDate: dateFormatter.date(from: "1967/06/05")!),
            Book(title: "The Divine Comedy", author: "Dante Alighieri", releaseDate: dateFormatter.date(from: "1320/01/01")!),
            Book(title: "Great Expectations", author: "Charles Dickens", releaseDate: dateFormatter.date(from: "1861/01/01")!),
            Book(title: "Lolita", author: "Vladimir Nabokov", releaseDate: dateFormatter.date(from: "1955/08/18")!),
            Book(title: "Catch-22", author: "Joseph Heller", releaseDate: dateFormatter.date(from: "1961/10/11")!),
            Book(title: "The Brothers Karamazov", author: "Fyodor Dostoevsky", releaseDate: dateFormatter.date(from: "1880/11/01")!),
            Book(title: "Anna Karenina", author: "Leo Tolstoy", releaseDate: dateFormatter.date(from: "1877/01/01")!),
            Book(title: "Brave New World", author: "Aldous Huxley", releaseDate: dateFormatter.date(from: "1932/08/01")!),
            Book(title: "The Picture of Dorian Gray", author: "Oscar Wilde", releaseDate: dateFormatter.date(from: "1890/07/01")!),
            Book(title: "Wuthering Heights", author: "Emily Brontë", releaseDate: dateFormatter.date(from: "1847/12/01")!),
            Book(title: "Don Quixote", author: "Miguel de Cervantes", releaseDate: dateFormatter.date(from: "1605/01/01")!),
            Book(title: "Jane Eyre", author: "Charlotte Brontë", releaseDate: dateFormatter.date(from: "1847/10/16")!),
            Book(title: "Invisible Man", author: "Ralph Ellison", releaseDate: dateFormatter.date(from: "1952/04/14")!),
            Book(title: "Beloved", author: "Toni Morrison", releaseDate: dateFormatter.date(from: "1987/09/02")!),
            Book(title: "The Grapes of Wrath", author: "John Steinbeck", releaseDate: dateFormatter.date(from: "1939/04/14")!),
            Book(title: "Les Misérables", author: "Victor Hugo", releaseDate: dateFormatter.date(from: "1862/01/01")!),
            Book(title: "Frankenstein", author: "Mary Shelley", releaseDate: dateFormatter.date(from: "1818/01/01")!),
            Book(title: "Dracula", author: "Bram Stoker", releaseDate: dateFormatter.date(from: "1897/05/26")!),
            Book(title: "Slaughterhouse-Five", author: "Kurt Vonnegut", releaseDate: dateFormatter.date(from: "1969/03/31")!),
            Book(title: "Fahrenheit 451", author: "Ray Bradbury", releaseDate: dateFormatter.date(from: "1953/10/19")!),
            Book(title: "The Handmaid's Tale", author: "Margaret Atwood", releaseDate: dateFormatter.date(from: "1985/09/01")!)
        
        ]
        return books
    }

}


