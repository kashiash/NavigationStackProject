//
//  BooksListView.swift
//  NavigationStackProject
//
//  Created by Jacek Kosiński G on 01/04/2023.
//

import SwiftUI

struct BooksListView: View {
    let books = Book.exampleBooks()
    @State private var selectedBookPath = [Book]()
    var body: some View {
        VStack {
            NavigationStack(path: $selectedBookPath) {
                List{
                    ForEach(books) { book in
                        NavigationLink(book.title,value: book)
                    }
                }
                .navigationDestination(for: Book.self) { book in
                    BookDetailView(book: book)
                }
            }
            VStack{
                ForEach(selectedBookPath) { book in
                    /*@START_MENU_TOKEN@*/Text(book.title)/*@END_MENU_TOKEN@*/
                }
                Button{
                    guard let book = books.first else {return }
                    selectedBookPath = [book]
                } label: {
                    Text("go to favorite")
                }
            }
        }
    }
}

struct BooksListView_Previews: PreviewProvider {
    static var previews: some View {
        BooksListView()
    }
}
