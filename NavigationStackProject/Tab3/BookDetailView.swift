//
//  BookDetailView.swift
//  NavigationStackProject
//
//  Created by Jacek Kosiński G on 01/04/2023.
//

import SwiftUI

struct BookDetailView: View {
    let book: Book
    var body: some View {
        VStack{
            Text(book.title)
            Text(book.author)
            Divider()

        }
        .navigationTitle(book.title)
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView(book: Book.example!)
    }
}
