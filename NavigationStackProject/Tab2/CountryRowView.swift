//
//  CountryRowView.swift
//  NavigationStackProject
//
//  Created by Jacek Kosiński G on 03/04/2023.
//

import SwiftUI

struct CountryRowView: View {
    let country: Country
    var body: some View {
        HStack {
            Text(country.flag)
                .font(.largeTitle)
            VStack{
                
                Text(country.name)
                
                Text(country.capital)
                    .font(.callout)
            }
        }
    }
}

struct CountryRowView_Previews: PreviewProvider {
    static var previews: some View {
        CountryRowView(country: Country.example)
    }
}
