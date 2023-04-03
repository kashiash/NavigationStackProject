    //
    //  Fruits.swift
    //  NavigationStackProject
    //
    //  Created by Jacek Kosiński G on 31/03/2023.
    //

import Foundation

struct Fruit:Identifiable,Hashable {
    let id: UUID
    let emoji: String
    let name: String
    let description: String
    
    init( emoji: String, name: String, description: String) {
        self.id = UUID()
        self.emoji = emoji
        self.name = name
        self.description = description
    }
    
    static let example =  Fruit(emoji: "🍎", name: "Red Apple", description: "A sweet, crisp, and juicy fruit.")
    
    static let fruits = [
        Fruit(emoji: "🍏", name: "Green Apple", description: "A crunchy, mildly tart fruit."),
        Fruit(emoji: "🍎", name: "Red Apple", description: "A sweet, crisp, and juicy fruit."),
        Fruit(emoji: "🍌", name: "Banana", description: "A sweet, creamy tropical fruit."),
        Fruit(emoji: "🍇", name: "Grapes", description: "Small, sweet, and juicy fruits, often eaten in clusters."),
        Fruit(emoji: "🍉", name: "Watermelon", description: "A large, juicy fruit with a green rind and sweet, red flesh."),
        Fruit(emoji: "🍊", name: "Orange", description: "A sweet, tangy citrus fruit with a thick, orange peel."),
        Fruit(emoji: "🍋", name: "Lemon", description: "A sour, yellow citrus fruit often used for its juice."),
        Fruit(emoji: "🍈", name: "Melon", description: "A sweet, juicy fruit with a thick rind and succulent flesh."),
        Fruit(emoji: "🍍", name: "Pineapple", description: "A sweet, tangy tropical fruit with a spiky exterior."),
        Fruit(emoji: "🍓", name: "Strawberry", description: "A sweet, red fruit with a seed-studded surface."),
        Fruit(emoji: "🍒", name: "Cherry", description: "A small, round, sweet fruit with a single pit."),
        Fruit(emoji: "🍑", name: "Peach", description: "A sweet, juicy fruit with a fuzzy skin and a single pit."),
        Fruit(emoji: "🥭", name: "Mango", description: "A sweet, tropical fruit with a large, flat seed."),
        Fruit(emoji: "🍅", name: "Tomato", description: "A juicy, red fruit commonly used in savory dishes."),
        Fruit(emoji: "🥥", name: "Coconut", description: "A tropical fruit with a hard shell and white, fleshy interior."),
        Fruit(emoji: "🥝", name: "Kiwi", description: "A small, green fruit with a fuzzy, brown skin."),
        Fruit(emoji: "🍐", name: "Pear", description: "A sweet, juicy fruit with a unique, curvy shape."),
        Fruit(emoji: "🍆", name: "Eggplant", description: "A purple fruit with a smooth skin, often used in savory dishes."),
        Fruit(emoji: "🌽", name: "Corn", description: "A large, yellow fruit with edible kernels, often eaten cooked."),
        Fruit(emoji: "🍠", name: "Sweet Potato", description: "A starchy, sweet, tuberous fruit with a rich, orange flesh."),
        Fruit(emoji: "🥑", name: "Avocado", description: "A creamy, green fruit with a large, single seed."),
        Fruit(emoji: "🥒", name: "Cucumber", description: "A long, green fruit with a crisp, watery flesh, often used in salads."),
        Fruit(emoji: "🌶️", name: "Chili Pepper", description: "A small, spicy fruit that comes in various colors and heat levels."),
        Fruit(emoji: "🍌", name: "Plantain", description: "A starchy, less sweet relative of the banana, often cooked before eating."),
        Fruit(emoji: "🍈", name: "Cantaloupe", description: "A sweet, juicy melon with a netted rind and orange flesh."),
        Fruit(emoji: "🍉", name: "Honeydew", description: "A sweet, juicy melon with a smooth rind and green flesh."),
        Fruit(emoji: "🍇", name: "Blackberry", description: "A sweet, slightly tart fruit composed of multiple tiny drupes."),
        Fruit(emoji: "🍓", name: "Raspberry", description: "A sweet, slightly tart fruit composed of multiple small drupes."),
        Fruit(emoji: "🍒", name: "Plum", description: "A sweet, juicy fruit with a smooth skin and a single pit."),
        Fruit(emoji: "🍑", name: "Apricot", description: "A sweet, slightly tart fruit with a velvety skin and a single pit."),
        Fruit(emoji: "🍊", name: "Tangerine", description: "A small, sweet citrus fruit with a thinner, easier-to-peel skin."),
        Fruit(emoji: "🍋", name: "Lime", description: "A small, green citrus fruit with a sour flavor, often used for its juice.")
    ]
}
