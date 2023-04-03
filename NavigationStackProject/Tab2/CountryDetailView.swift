//
//  CountryDetailView.swift
//  NavigationStackProject
//
//  Created by Jacek Kosiński G on 31/03/2023.
//

import SwiftUI
import MapKit

struct CountryDetailView: View {
    var country: Country
    
    var body: some View {
        VStack {
            Text(country.name)
                .font(.largeTitle)
            Text(country.flag)
                .font(.system(size: 80))
               // .frame(height: 300)
            Text("Continent: \(country.continent)")
                .padding(.top)
            Text("Currency: \(country.currency) (\(country.currencySymbol))")
                .padding(.top)
            Text("Capital: \(country.capital)")
                .padding(.top)
            Map(coordinateRegion: .constant(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: country.capitalCoordinates.latitude, longitude: country.capitalCoordinates.longitude), span: MKCoordinateSpan(latitudeDelta: 1.5, longitudeDelta: 1.5))))
                .frame(height: 500)
        }
    }
}

struct CountryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetailView(country: Country.example)
    }
}
