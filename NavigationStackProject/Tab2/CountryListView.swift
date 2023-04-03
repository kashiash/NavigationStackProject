//
//  CountryListView.swift
//  NavigationStackProject
//
//  Created by Jacek Kosiński G on 31/03/2023.
//

import SwiftUI

struct CountryListView: View {
    
    let countries = Country.exampleCountries()
    var body: some View {
        NavigationView {
            List(countries) { country in
                NavigationLink(destination: CountryDetailView(country: country)) {
                        CountryRowView(country: country)
                }
            }
            .navigationBarTitle("Countries")
        }
    }
}

struct CountryListView_Previews: PreviewProvider {
    static var previews: some View {
        CountryListView()
    }
}
