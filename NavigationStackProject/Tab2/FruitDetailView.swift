    //
    //  FruitDetailView.swift
    //  NavigationStackProject
    //
    //  Created by Jacek Kosiński G on 03/04/2023.
    //

import SwiftUI

struct FruitDetailView: View {
    let fruit:Fruit
    var body: some View {
        VStack {
            Spacer()
            Text(fruit.emoji)
                .font(.largeTitle)
            Spacer()
            
            Text(fruit.name)
                .font(.title)
            
            Text(fruit.description)
                .font(.callout)
            Spacer()
        }
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: Fruit.example)
    }
}
