//
//  FruitRowView.swift
//  NavigationStackProject
//
//  Created by Jacek Kosiński G on 03/04/2023.
//

import SwiftUI

struct FruitRowView: View {
    let fruit:Fruit
    var body: some View {
        HStack {
            Text(fruit.emoji)
                .font(.largeTitle)
            VStack{
                
                Text(fruit.name)
                
                Text(fruit.description)
                    .font(.callout)
            }
        }
    }
}

struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruit: Fruit.example)
    }
}
