    //
    //  Countries.swift
    //  NavigationStackProject
    //
    //  Created by Jacek Kosiński G on 31/03/2023.
    //

import Foundation

struct Country: Identifiable{
    
    let id: UUID
    var name: String
    var flag: String
    var continent: String
    var currency: String
    var currencySymbol: String
    var capital: String
    var capitalCoordinates: (latitude: Double, longitude: Double)
    
    init( name: String, flag: String, continent: String, currency: String, currencySymbol: String, capital: String, capitalCoordinates: (latitude: Double, longitude: Double)) {
        
        self.id = UUID()
        self.name = name
        self.flag = flag
        self.continent = continent
        self.currency = currency
        self.currencySymbol = currencySymbol
        self.capital = capital
        self.capitalCoordinates = capitalCoordinates
    }
    
    static  let   example =  Country(name: "Poland", flag: "🇵🇱", continent: "Europe", currency: "Polish Złoty", currencySymbol: "zł", capital: "Warsaw", capitalCoordinates: (52.2297, 21.0122))
    
    static func exampleCountries() -> [Country] {
        let countries = [
            Country(name: "Albania", flag: "🇦🇱", continent: "Europe", currency: "Albanian Lek", currencySymbol: "Lek", capital: "Tirana", capitalCoordinates: (41.3275, 19.8187)),
            Country(name: "Andorra", flag: "🇦🇩", continent: "Europe", currency: "Euro", currencySymbol: "€", capital: "Andorra la Vella", capitalCoordinates: (42.5063, 1.5218)),
            Country(name: "Armenia", flag: "🇦🇲", continent: "Europe", currency: "Armenian Dram", currencySymbol: "֏", capital: "Yerevan", capitalCoordinates: (40.1792, 44.4991)),
            Country(name: "Austria", flag: "🇦🇹", continent: "Europe", currency: "Euro", currencySymbol: "€", capital: "Vienna", capitalCoordinates: (48.2082, 16.3738)),
            Country(name: "Azerbaijan", flag: "🇦🇿", continent: "Europe", currency: "Azerbaijani Manat", currencySymbol: "₼", capital: "Baku", capitalCoordinates: (40.4093, 49.8671)),
            Country(name: "Belarus", flag: "🇧🇾", continent: "Europe", currency: "Belarusian Ruble", currencySymbol: "Br", capital: "Minsk", capitalCoordinates: (53.9006, 27.5590)),
            Country(name: "Belgium", flag: "🇧🇪", continent: "Europe", currency: "Euro", currencySymbol: "€", capital: "Brussels", capitalCoordinates: (50.8503, 4.3517)),
            Country(name: "Bosnia and Herzegovina", flag: "🇧🇦", continent: "Europe", currency: "Bosnia and Herzegovina Convertible Mark", currencySymbol: "KM", capital: "Sarajevo", capitalCoordinates: (43.8563, 18.4131)),
            Country(name: "Bulgaria", flag: "🇧🇬", continent: "Europe", currency: "Bulgarian Lev", currencySymbol: "лв", capital: "Sofia", capitalCoordinates: (42.6977, 23.3219)),
            
            Country(name: "Croatia", flag: "🇭🇷", continent: "Europe", currency: "Croatian Kuna", currencySymbol: "kn", capital: "Zagreb", capitalCoordinates: (45.8150, 15.9819)),
            Country(name: "Cyprus", flag: "🇨🇾", continent: "Europe", currency: "Euro", currencySymbol: "€", capital: "Nicosia", capitalCoordinates: (35.1739, 33.3645)),
            Country(name: "Czech Republic", flag: "🇨🇿", continent: "Europe", currency: "Czech Koruna", currencySymbol: "Kč", capital: "Prague", capitalCoordinates: (50.0755, 14.4378)),
            Country(name: "Denmark", flag: "🇩🇰", continent: "Europe", currency: "Danish Krone", currencySymbol: "kr", capital: "Copenhagen", capitalCoordinates: (55.6761, 12.5683)),
            Country(name: "Estonia", flag: "🇪🇪", continent: "Europe", currency: "Euro", currencySymbol: "€", capital: "Tallinn", capitalCoordinates: (59.4369, 24.7536)),
            Country(name: "Finland", flag: "🇫🇮", continent: "Europe", currency: "Euro", currencySymbol: "€", capital: "Helsinki", capitalCoordinates: (60.1699, 24.9384)),
            Country(name: "France", flag: "🇫🇷", continent: "Europe", currency: "Euro", currencySymbol: "€", capital: "Paris", capitalCoordinates: (48.8566, 2.3522)),
            Country(name: "Georgia", flag: "🇬🇪", continent: "Europe", currency: "Georgian Lari", currencySymbol: "₾", capital: "Tbilisi", capitalCoordinates: (41.7151, 44.8271)),
            Country(name: "Germany", flag: "🇩🇪", continent: "Europe", currency: "Euro", currencySymbol: "€", capital: "Berlin", capitalCoordinates: (52.5200, 13.4050)),
            Country(name: "Greece", flag: "🇬🇷", continent: "Europe", currency: "Euro", currencySymbol: "€", capital: "Athens", capitalCoordinates: (37.9838, 23.7275)),
            Country(name: "Hungary", flag: "🇭🇺", continent: "Europe", currency: "Hungarian Forint", currencySymbol: "Ft", capital: "Budapest", capitalCoordinates: (47.4979, 19.0402)),
            Country(name: "Iceland", flag: "🇮🇸", continent: "Europe", currency: "Icelandic Króna", currencySymbol: "kr", capital: "Reykjavik", capitalCoordinates: (64.1466, -21.9426)),
            Country(name: "Ireland", flag: "🇮🇪", continent: "Europe", currency: "Euro", currencySymbol: "€", capital: "Dublin", capitalCoordinates: (53.3498, -6.2603)),
            
            
            Country(name: "Italy", flag: "🇮🇹", continent: "Europe", currency: "Euro", currencySymbol: "€", capital: "Rome", capitalCoordinates: (41.9028, 12.4964)),
            Country(name: "Kosovo", flag: "🇽🇰", continent: "Europe", currency: "Euro", currencySymbol: "€", capital: "Pristina", capitalCoordinates: (42.6629, 21.1655)),
            Country(name: "Latvia", flag: "🇱🇻", continent: "Europe", currency: "Euro", currencySymbol: "€", capital: "Riga", capitalCoordinates: (56.9496, 24.1052)),
            Country(name: "Liechtenstein", flag: "🇱🇮", continent: "Europe", currency: "Swiss Franc", currencySymbol: "CHF", capital: "Vaduz", capitalCoordinates: (47.1410, 9.5209)),
            Country(name: "Lithuania", flag: "🇱🇹", continent: "Europe", currency: "Euro", currencySymbol: "€", capital: "Vilnius", capitalCoordinates: (54.6872, 25.2797)),
            Country(name: "Luxembourg", flag: "🇱🇺", continent: "Europe", currency: "Euro", currencySymbol: "€", capital: "Luxembourg City", capitalCoordinates: (49.6116, 6.1319)),
            Country(name: "Malta", flag: "🇲🇹", continent: "Europe", currency: "Euro", currencySymbol: "€", capital: "Valletta", capitalCoordinates: (35.8989, 14.5146)),
            Country(name: "Moldova", flag: "🇲🇩", continent: "Europe", currency: "Moldovan Leu", currencySymbol: "L", capital: "Chișinău", capitalCoordinates: (47.0105, 28.8638)),
            Country(name: "Monaco", flag: "🇲🇨", continent: "Europe", currency: "Euro", currencySymbol: "€", capital: "Monaco", capitalCoordinates: (43.7384, 7.4246)),
            Country(name: "Montenegro", flag: "🇲🇪", continent: "Europe", currency: "Euro", currencySymbol: "€", capital: "Podgorica", capitalCoordinates: (42.4304, 19.2594)),
            Country(name: "Netherlands", flag: "🇳🇱", continent: "Europe", currency: "Euro", currencySymbol: "€", capital: "Amsterdam", capitalCoordinates: (52.3676, 4.9041)),
            Country(name: "North Macedonia", flag: "🇲🇰", continent: "Europe", currency: "Macedonian Denar", currencySymbol: "ден", capital: "Skopje", capitalCoordinates: (41.9973, 21.4280)),
            Country(name: "Norway", flag: "🇳🇴", continent: "Europe", currency: "Norwegian Krone", currencySymbol: "kr", capital: "Oslo", capitalCoordinates: (59.9139, 10.7522)),
            
            
            Country(name: "Poland", flag: "🇵🇱", continent: "Europe", currency: "Polish Złoty", currencySymbol: "zł", capital: "Warsaw", capitalCoordinates: (52.2297, 21.0122)),
            Country(name: "Portugal", flag: "🇵🇹", continent: "Europe", currency: "Euro", currencySymbol: "€", capital: "Lisbon", capitalCoordinates: (38.7223, -9.1393)),
            Country(name: "Romania", flag: "🇷🇴", continent: "Europe", currency: "Romanian Leu", currencySymbol: "lei", capital: "Bucharest", capitalCoordinates: (44.4268, 26.1025)),
            Country(name: "Russia", flag: "🇷🇺", continent: "Europe", currency: "Russian Ruble", currencySymbol: "₽", capital: "Moscow", capitalCoordinates: (55.7558, 37.6173)),
            Country(name: "San Marino", flag: "🇸🇲", continent: "Europe", currency: "Euro", currencySymbol: "€", capital: "San Marino City", capitalCoordinates: (43.9424, 12.4578)),
            Country(name: "Serbia", flag: "🇷🇸", continent: "Europe", currency: "Serbian Dinar", currencySymbol: "дин", capital: "Belgrade", capitalCoordinates: (44.7866, 20.4489)),
            Country(name: "Slovakia", flag: "🇸🇰", continent: "Europe", currency: "Euro", currencySymbol: "€", capital: "Bratislava", capitalCoordinates: (48.1486, 17.1077)),
            Country(name: "Slovenia", flag: "🇸🇮", continent: "Europe", currency: "Euro", currencySymbol: "€", capital: "Ljubljana", capitalCoordinates: (46.0569, 14.5058)),
            Country(name: "Spain", flag: "🇪🇸", continent: "Europe", currency: "Euro", currencySymbol: "€", capital: "Madrid", capitalCoordinates: (40.4168, -3.7038)),
            Country(name: "Sweden", flag: "🇸🇪", continent: "Europe", currency: "Swedish Krona", currencySymbol: "kr", capital: "Stockholm", capitalCoordinates: (59.3293, 18.0686)),
            Country(name: "Switzerland", flag: "🇨🇭", continent: "Europe", currency: "Swiss Franc", currencySymbol: "CHF", capital: "Bern", capitalCoordinates: (46.9475, 7.4442)),
            Country(name: "Ukraine", flag: "🇺🇦", continent: "Europe", currency: "Ukrainian Hryvnia", currencySymbol: "₴", capital: "Kyiv", capitalCoordinates: (50.4501, 30.5234)),
            Country(name: "United Kingdom", flag: "🇬🇧", continent: "Europe", currency: "Pound Sterling", currencySymbol: "£", capital: "London", capitalCoordinates: (51.5074, -0.1278)),
            
            
            // Define an array of countries in Australia and Oceania
            Country(name: "Australia", flag: "🇦🇺", continent: "Australia and Oceania", currency: "Australian dollar", currencySymbol: "$", capital: "Canberra", capitalCoordinates: (-35.282, 149.128)),
            Country(name: "New Zealand", flag: "🇳🇿", continent: "Australia and Oceania", currency: "New Zealand dollar", currencySymbol: "$", capital: "Wellington", capitalCoordinates: (-41.286, 174.776)),
            Country(name: "Fiji", flag: "🇫🇯", continent: "Australia and Oceania", currency: "Fijian dollar", currencySymbol: "$", capital: "Suva", capitalCoordinates: (-18.141, 178.441)),
            Country(name: "Papua New Guinea", flag: "🇵🇬", continent: "Australia and Oceania", currency: "Papua New Guinean kina", currencySymbol: "K", capital: "Port Moresby", capitalCoordinates: (-9.443, 147.18)),
            Country(name: "Solomon Islands", flag: "🇸🇧", continent: "Australia and Oceania", currency: "Solomon Islands dollar", currencySymbol: "$", capital: "Honiara", capitalCoordinates: (-9.433, 159.95)),
            Country(name: "Vanuatu", flag: "🇻🇺", continent: "Australia and Oceania", currency: "Vanuatu vatu", currencySymbol: "VT", capital: "Port Vila", capitalCoordinates: (-17.736, 168.321)),
            Country(name: "Samoa", flag: "🇼🇸", continent: "Australia and Oceania", currency: "Samoan tālā", currencySymbol: "T", capital: "Apia", capitalCoordinates: (-13.837, -171.742)),
            Country(name: "Tonga", flag: "🇹🇴", continent: "Australia and Oceania", currency: "Tongan paʻanga", currencySymbol: "T$", capital: "Nukuʻalofa", capitalCoordinates: (-21.136, -175.216)),
            Country(name: "Micronesia", flag: "🇫🇲", continent: "Australia and Oceania", currency: "United States dollar", currencySymbol: "$", capital: "Palikir", capitalCoordinates: (6.916, 158.157)),
            Country(name: "Kiribati", flag: "🇰🇮", continent: "Australia and Oceania", currency: "Kiribati dollar", currencySymbol: "$", capital: "Tarawa", capitalCoordinates: (1.329, 172.976)),
            Country(name: "Marshall Islands", flag: "🇲🇭", continent: "Australia and Oceania", currency: "United States dollar", currencySymbol: "$", capital: "Majuro", capitalCoordinates: (7.107, 171.37)),
            
            Country(name: "Palau", flag: "🇵🇼", continent: "Australia and Oceania", currency: "United States dollar", currencySymbol: "$", capital: "Ngerulmud", capitalCoordinates: (7.500, 134.623)),
            
            
            Country(name: "Nauru", flag: "🇳🇷", continent: "Australia and Oceania", currency: "Australian dollar", currencySymbol: "$", capital: "Yaren", capitalCoordinates: (-0.552, 166.925)),
            Country(name: "Tuvalu", flag: "🇹🇻", continent: "Australia and Oceania", currency: "Tuvaluan dollar", currencySymbol: "$", capital: "Funafuti", capitalCoordinates: (-8.523, 179.196)),
            Country(name: "Cook Islands", flag: "🇨🇰", continent: "Australia and Oceania", currency: "New Zealand dollar", currencySymbol: "$", capital: "Avarua", capitalCoordinates: (-21.206, -159.774)),
            Country(name: "Niue", flag: "🇳🇺", continent: "Australia and Oceania", currency: "New Zealand dollar", currencySymbol: "$", capital: "Alofi", capitalCoordinates: (-19.059, -169.918)),
            Country(name: "Tokelau", flag: "🇹🇰", continent: "Australia and Oceania", currency: "New Zealand dollar", currencySymbol: "$", capital: "Nukunonu", capitalCoordinates: (-9.174, -171.819)),
            Country(name: "Pitcairn Islands", flag: "🇵🇳", continent: "Australia and Oceania", currency: "New Zealand dollar", currencySymbol: "$", capital: "Adamstown", capitalCoordinates: (-25.068, -130.101)),
            Country(name: "American Samoa", flag: "🇦🇸", continent: "Australia and Oceania", currency: "United States dollar", currencySymbol: "$", capital: "Pago Pago", capitalCoordinates: (-14.276, -170.704)),
            Country(name: "Wallis and Futuna", flag: "🇼🇫", continent: "Australia and Oceania", currency: "CFP franc", currencySymbol: "₣", capital: "Mata-Utu", capitalCoordinates: (-13.28, -176.177)),
            Country(name: "French Polynesia", flag: "🇵🇫", continent: "Australia and Oceania", currency: "CFP franc", currencySymbol: "₣", capital: "Papeete", capitalCoordinates: (-17.542, -149.57)),
            
            
            // Define an array of countries in North America
            Country(name: "Canada", flag: "🇨🇦", continent: "North America", currency: "Canadian dollar", currencySymbol: "$", capital: "Ottawa", capitalCoordinates: (45.4215, -75.6972)),
            Country(name: "Mexico", flag: "🇲🇽", continent: "North America", currency: "Mexican peso", currencySymbol: "$", capital: "Mexico City", capitalCoordinates: (19.4326, -99.1332)),
            Country(name: "United States", flag: "🇺🇸", continent: "North America", currency: "United States dollar", currencySymbol: "$", capital: "Washington, D.C.", capitalCoordinates: (38.9072, -77.0369)),
            Country(name: "Bahamas", flag: "🇧🇸", continent: "North America", currency: "Bahamian dollar", currencySymbol: "$", capital: "Nassau", capitalCoordinates: (25.0478, -77.3554)),
            Country(name: "Cuba", flag: "🇨🇺", continent: "North America", currency: "Cuban peso", currencySymbol: "$", capital: "Havana", capitalCoordinates: (23.1136, -82.3666)),
            Country(name: "Haiti", flag: "🇭🇹", continent: "North America", currency: "Haitian gourde", currencySymbol: "G", capital: "Port-au-Prince", capitalCoordinates: (18.5944, -72.3074)),
            Country(name: "Dominican Republic", flag: "🇩🇴", continent: "North America", currency: "Dominican peso", currencySymbol: "$", capital: "Santo Domingo", capitalCoordinates: (18.4861, -69.9312)),
            Country(name: "Jamaica", flag: "🇯🇲", continent: "North America", currency: "Jamaican dollar", currencySymbol: "$", capital: "Kingston", capitalCoordinates: (17.9686, -76.7936)),
            Country(name: "Trinidad and Tobago", flag: "🇹🇹", continent: "North America", currency: "Trinidad and Tobago dollar", currencySymbol: "TT$", capital: "Port of Spain", capitalCoordinates: (10.6596, -61.4789)),
            Country(name: "Costa Rica", flag: "🇨🇷", continent: "North America", currency: "Costa Rican colón", currencySymbol: "₡", capital: "San José", capitalCoordinates: (9.9281, -84.0907)),
            Country(name: "Panama", flag: "🇵🇦", continent: "North America", currency: "Panamanian balboa, United States dollar", currencySymbol: "B/.", capital: "Panama City", capitalCoordinates: (8.9833, -79.5167)),
            Country(name: "Belize", flag: "🇧🇿", continent: "North America", currency: "Belize dollar", currencySymbol: "BZ$", capital: "Belmopan", capitalCoordinates: (17.2510, -88.7590)),
            Country(name: "El Salvador", flag: "🇸🇻", continent: "North America", currency: "United States dollar", currencySymbol: "$", capital: "San Salvador", capitalCoordinates: (13.693, -89.218)),
            Country(name: "Guatemala", flag: "🇬🇹", continent: "North America", currency: "Guatemalan quetzal", currencySymbol: "Q", capital: "Guatemala City", capitalCoordinates: (14.6248, -90.5328)),
            Country(name: "Honduras", flag: "🇭🇳", continent: "North America", currency: "Honduran lempira", currencySymbol: "L", capital: "Tegucigalpa", capitalCoordinates: (14.0818, -87.2068)),
            Country(name: "Nicaragua", flag: "🇳🇮", continent: "North America", currency: "Nicaraguan córdoba", currencySymbol: "C$", capital: "Managua", capitalCoordinates: (12.1158, -86.2362)),
            Country(name: "Costa Rica", flag: "🇨🇷", continent: "North America", currency: "Costa Rican colón", currencySymbol: "₡", capital: "San José", capitalCoordinates: (9.9281, -84.0907)),
            Country(name: "Panama", flag: "🇵🇦", continent: "North America", currency: "Panamanian balboa, United States dollar", currencySymbol: "B/.", capital: "Panama City", capitalCoordinates: (8.9833, -79.5167)),
            
            
            // Define an array of countries in South America
            Country(name: "Argentina", flag: "🇦🇷", continent: "South America", currency: "Argentine peso", currencySymbol: "$", capital: "Buenos Aires", capitalCoordinates: (-34.6037, -58.3816)),
            Country(name: "Bolivia", flag: "🇧🇴", continent: "South America", currency: "Bolivian boliviano", currencySymbol: "Bs.", capital: "La Paz", capitalCoordinates: (-16.4897, -68.1193)),
            Country(name: "Brazil", flag: "🇧🇷", continent: "South America", currency: "Brazilian real", currencySymbol: "R$", capital: "Brasília", capitalCoordinates: (-15.7942, -47.8825)),
            Country(name: "Chile", flag: "🇨🇱", continent: "South America", currency: "Chilean peso", currencySymbol: "$", capital: "Santiago", capitalCoordinates: (-33.4489, -70.6693)),
            Country(name: "Colombia", flag: "🇨🇴", continent: "South America", currency: "Colombian peso", currencySymbol: "$", capital: "Bogotá", capitalCoordinates: (4.7109, -74.0721)),
            Country(name: "Ecuador", flag: "🇪🇨", continent: "South America", currency: "United States dollar", currencySymbol: "$", capital: "Quito", capitalCoordinates: (-0.1807, -78.4678)),
            Country(name: "Guyana", flag: "🇬🇾", continent: "South America", currency: "Guyanese dollar", currencySymbol: "$", capital: "Georgetown", capitalCoordinates: (6.8013, -58.1551)),
            Country(name: "Paraguay", flag: "🇵🇾", continent: "South America", currency: "Paraguayan guaraní", currencySymbol: "₲", capital: "Asunción", capitalCoordinates: (-25.2822, -57.6359)),
            Country(name: "Peru", flag: "🇵🇪", continent: "South America", currency: "Peruvian sol", currencySymbol: "S/", capital: "Lima", capitalCoordinates: (-12.0464, -77.0428)),
            Country(name: "Suriname", flag: "🇸🇷", continent: "South America", currency: "Surinamese dollar", currencySymbol: "$", capital: "Paramaribo", capitalCoordinates: (5.8392, -55.2038)),
            Country(name: "Uruguay", flag: "🇺🇾", continent: "South America", currency: "Uruguayan peso", currencySymbol: "$", capital: "Montevideo", capitalCoordinates: (-34.9011, -56.1645)),
            Country(name: "Venezuela", flag: "🇻🇪", continent: "South America", currency: "Venezuelan bolívar soberano", currencySymbol: "Bs.", capital: "Caracas", capitalCoordinates: (10.4806, -66.9036)),
            
            
            // Define an array of countries in Africa
            Country(name: "Algeria", flag: "🇩🇿", continent: "Africa", currency: "Algerian dinar", currencySymbol: "د.ج", capital: "Algiers", capitalCoordinates: (36.7538, 3.0588)),
            Country(name: "Angola", flag: "🇦🇴", continent: "Africa", currency: "Angolan kwanza", currencySymbol: "Kz", capital: "Luanda", capitalCoordinates: (-8.8399, 13.2894)),
            Country(name: "Benin", flag: "🇧🇯", continent: "Africa", currency: "West African CFA franc", currencySymbol: "CFA", capital: "Porto-Novo", capitalCoordinates: (6.4969, 2.6283)),
            Country(name: "Botswana", flag: "🇧🇼", continent: "Africa", currency: "Botswana pula", currencySymbol: "P", capital: "Gaborone", capitalCoordinates: (-24.6282, 25.9231)),
            Country(name: "Burkina Faso", flag: "🇧🇫", continent: "Africa", currency: "West African CFA franc", currencySymbol: "CFA", capital: "Ouagadougou", capitalCoordinates: (12.3703, -1.5247)),
            Country(name: "Burundi", flag: "🇧🇮", continent: "Africa", currency: "Burundian franc", currencySymbol: "FBu", capital: "Bujumbura", capitalCoordinates: (-3.3818, 29.3622)),
            Country(name: "Cameroon", flag: "🇨🇲", continent: "Africa", currency: "Central African CFA franc", currencySymbol: "CFA", capital: "Yaoundé", capitalCoordinates: (3.848, 11.5021)),
            Country(name: "Cape Verde", flag: "🇨🇻", continent: "Africa", currency: "Cape Verdean escudo", currencySymbol: "$", capital: "Praia", capitalCoordinates: (14.933, -23.5133)),
            Country(name: "Central African Republic", flag: "🇨🇫", continent: "Africa", currency: "Central African CFA franc", currencySymbol: "CFA", capital: "Bangui", capitalCoordinates: (4.3947, 18.5582)),
            Country(name: "Chad", flag: "🇹🇩", continent: "Africa", currency: "Central African CFA franc", currencySymbol: "CFA", capital: "N'Djamena", capitalCoordinates: (12.1342, 15.0557)),
            Country(name: "Comoros", flag: "🇰🇲", continent: "Africa", currency: "Comorian franc", currencySymbol: "CF", capital: "Moroni", capitalCoordinates: (-11.7042, 43.2402)),
            Country(name: "Democratic Republic of the Congo", flag: "🇨🇩", continent: "Africa", currency: "Congolese franc", currencySymbol: "FC", capital: "Kinshasa", capitalCoordinates: (-4.4419, 15.2663)),
            
            Country(name: "Djibouti", flag: "🇩🇯", continent: "Africa", currency: "Djiboutian franc", currencySymbol: "Fdj", capital: "Djibouti", capitalCoordinates: (11.589, 43.146)),
            Country(name: "Egypt", flag: "🇪🇬", continent: "Africa", currency: "Egyptian pound", currencySymbol: "E£", capital: "Cairo", capitalCoordinates: (30.0444, 31.2357)),
            Country(name: "Equatorial Guinea", flag: "🇬🇶", continent: "Africa", currency: "Central African CFA franc", currencySymbol: "CFA", capital: "Malabo", capitalCoordinates: (3.7523, 8.7732)),
            Country(name: "Eritrea", flag: "🇪🇷", continent: "Africa", currency: "Eritrean nakfa", currencySymbol: "Nfk", capital: "Asmara", capitalCoordinates: (15.3315, 38.9183)),
            Country(name: "Eswatini", flag: "🇸🇿", continent: "Africa", currency: "Swazi lilangeni, South African rand", currencySymbol: "L", capital: "Mbabane", capitalCoordinates: (-26.3054, 31.1367)),
            Country(name: "Ethiopia", flag: "🇪🇹", continent: "Africa", currency: "Ethiopian birr", currencySymbol: "Br", capital: "Addis Ababa", capitalCoordinates: (9.0054, 38.7636)),
            Country(name: "Gabon", flag: "🇬🇦", continent: "Africa", currency: "Central African CFA franc", currencySymbol: "CFA", capital: "Libreville", capitalCoordinates: (0.4162, 9.4673)),
            Country(name: "Gambia", flag: "🇬🇲", continent: "Africa", currency: "Gambian dalasi", currencySymbol: "D", capital: "Banjul", capitalCoordinates: (13.4549, -16.579)),
            Country(name: "Ghana", flag: "🇬🇭", continent: "Africa", currency: "Ghanaian cedi", currencySymbol: "₵", capital: "Accra", capitalCoordinates: (5.6037, -0.187)),
            Country(name: "Guinea", flag: "🇬🇳", continent: "Africa", currency: "Guinean franc", currencySymbol: "FG", capital: "Conakry", capitalCoordinates: (9.537, -13.6785)),
            Country(name: "Guinea-Bissau", flag: "🇬🇼", continent: "Africa", currency: "West African CFA franc", currencySymbol: "CFA", capital: "Bissau", capitalCoordinates: (11.8636, -15.5846)),
            Country(name: "Ivory Coast", flag: "🇨🇮", continent: "Africa", currency: "West African CFA franc", currencySymbol: "CFA", capital: "Yamoussoukro", capitalCoordinates: (6.8276, -5.2893)),
            
            Country(name: "Kenya", flag: "🇰🇪", continent: "Africa", currency: "Kenyan shilling", currencySymbol: "KSh", capital: "Nairobi", capitalCoordinates: (-1.2921, 36.8219)),
            Country(name: "Lesotho", flag: "🇱🇸", continent: "Africa", currency: "Lesotho loti, South African rand", currencySymbol: "L", capital: "Maseru", capitalCoordinates: (-29.3167, 27.4833)),
            Country(name: "Liberia", flag: "🇱🇷", continent: "Africa", currency: "Liberian dollar", currencySymbol: "$", capital: "Monrovia", capitalCoordinates: (6.3005, -10.7969)),
            Country(name: "Libya", flag: "🇱🇾", continent: "Africa", currency: "Libyan dinar", currencySymbol: "LD", capital: "Tripoli", capitalCoordinates: (32.8867, 13.1914)),
            Country(name: "Madagascar", flag: "🇲🇬", continent: "Africa", currency: "Malagasy ariary", currencySymbol: "Ar", capital: "Antananarivo", capitalCoordinates: (-18.8792, 47.5079)),
            Country(name: "Malawi", flag: "🇲🇼", continent: "Africa", currency: "Malawian kwacha", currencySymbol: "MK", capital: "Lilongwe", capitalCoordinates: (-13.9626, 33.7741)),
            Country(name: "Mali", flag: "🇲🇱", continent: "Africa", currency: "West African CFA franc", currencySymbol: "CFA", capital: "Bamako", capitalCoordinates: (12.65, -8)),
            Country(name: "Mauritania", flag: "🇲🇷", continent: "Africa", currency: "Mauritanian ouguiya", currencySymbol: "UM", capital: "Nouakchott", capitalCoordinates: (18.0737, -15.9582)),
            Country(name: "Mauritius", flag: "🇲🇺", continent: "Africa", currency: "Mauritian rupee", currencySymbol: "₨", capital: "Port Louis", capitalCoordinates: (-20.1654, 57.4964)),
            Country(name: "Morocco", flag: "🇲🇦", continent: "Africa", currency: "Moroccan dirham", currencySymbol: "MAD", capital: "Rabat", capitalCoordinates: (34.0133, -6.8326)),
            Country(name: "Mozambique", flag: "🇲🇿", continent: "Africa", currency: "Mozambican metical", currencySymbol: "MT", capital: "Maputo", capitalCoordinates: (-25.9686, 32.5804)),
            Country(name: "Namibia", flag: "🇳🇦", continent: "Africa", currency: "Namibian dollar, South African rand", currencySymbol: "$, R", capital: "Windhoek", capitalCoordinates: (-22.57, 17.0836)),
            Country(name: "Niger", flag: "🇳🇪", continent: "Africa", currency: "West African CFA franc", currencySymbol: "CFA", capital: "Niamey", capitalCoordinates: (13.5164, 2.1157)),
            Country(name: "Nigeria", flag: "🇳🇬", continent: "Africa", currency: "Nigerian naira", currencySymbol: "₦", capital: "Abuja", capitalCoordinates: (9.0765, 7.3986)),
            Country(name: "Rwanda", flag: "🇷🇼", continent: "Africa", currency: "Rwandan franc", currencySymbol: "FRw", capital: "Kigali", capitalCoordinates: (-1.9536, 30.060)),
            Country(name: "São Tomé and Príncipe", flag: "🇸🇹", continent: "Africa", currency: "São Tomé and Príncipe dobra", currencySymbol: "Db", capital: "São Tomé", capitalCoordinates: (0.1864, 6.6131)),
            Country(name: "Senegal", flag: "🇸🇳", continent: "Africa", currency: "West African CFA franc", currencySymbol: "CFA", capital: "Dakar", capitalCoordinates: (14.6962, -17.4444)),
            Country(name: "Seychelles", flag: "🇸🇨", continent: "Africa", currency: "Seychellois rupee", currencySymbol: "₨", capital: "Victoria", capitalCoordinates: (-4.6192, 55.4513)),
            Country(name: "Sierra Leone", flag: "🇸🇱", continent: "Africa", currency: "Sierra Leonean leone", currencySymbol: "Le", capital: "Freetown", capitalCoordinates: (8.484, -13.2343)),
            Country(name: "Somalia", flag: "🇸🇴", continent: "Africa", currency: "Somali shilling", currencySymbol: "S", capital: "Mogadishu", capitalCoordinates: (2.0469, 45.3182)),
            Country(name: "South Africa", flag: "🇿🇦", continent: "Africa", currency: "South African rand", currencySymbol: "R", capital: "Pretoria, Cape Town, Bloemfontein", capitalCoordinates: (-25.7313, 28.2184)),
            Country(name: "South Sudan", flag: "🇸🇸", continent: "Africa", currency: "South Sudanese pound", currencySymbol: "SSP", capital: "Juba", capitalCoordinates: (4.8594, 31.5713)),
            Country(name: "Sudan", flag: "🇸🇩", continent: "Africa", currency: "Sudanese pound", currencySymbol: "SDG", capital: "Khartoum", capitalCoordinates: (15.5007, 32.5599)),
            Country(name: "Tanzania", flag: "🇹🇿", continent: "Africa", currency: "Tanzanian shilling", currencySymbol: "TSh", capital: "Dodoma", capitalCoordinates: (-6.1754, 35.7468)),
            Country(name: "Togo", flag: "🇹🇬", continent: "Africa", currency: "West African CFA franc", currencySymbol: "CFA", capital: "Lomé", capitalCoordinates: (6.1319, 1.2228)),
            Country(name: "Tunisia", flag: "🇹🇳", continent: "Africa", currency: "Tunisian dinar", currencySymbol: "DT", capital: "Tunis", capitalCoordinates: (36.8065, 10.1815)),
            Country(name: "Uganda", flag: "🇺🇬", continent: "Africa", currency: "Ugandan shilling", currencySymbol: "USh", capital: "Kampala", capitalCoordinates: (0.3476, 32.5825)),
            Country(name: "Zambia", flag: "🇿🇲", continent: "Africa", currency: "Zambian kwacha", currencySymbol: "ZK", capital: "Lusaka", capitalCoordinates: (-15.3875, 28.3228)),
            Country(name: "Zimbabwe", flag: "🇿🇼", continent: "Africa", currency: "Zimbabwean dollar", currencySymbol: "Z$", capital: "Harare", capitalCoordinates: (-17.8252, 31.0335)),
            
            
            
            
            Country(name: "Afghanistan", flag: "🇦🇫", continent: "Asia", currency: "Afghan afghani", currencySymbol: "؋", capital: "Kabul", capitalCoordinates: (34.5328, 69.1658)),
            Country(name: "Armenia", flag: "🇦🇲", continent: "Asia", currency: "Armenian dram", currencySymbol: "֏", capital: "Yerevan", capitalCoordinates: (40.1811, 44.5136)),
            Country(name: "Azerbaijan", flag: "🇦🇿", continent: "Asia", currency: "Azerbaijani manat", currencySymbol: "₼", capital: "Baku", capitalCoordinates: (40.4093, 49.8671)),
            Country(name: "Bahrain", flag: "🇧🇭", continent: "Asia", currency: "Bahraini dinar", currencySymbol: "BD", capital: "Manama", capitalCoordinates: (26.2041, 50.5500)),
            Country(name: "Bangladesh", flag: "🇧🇩", continent: "Asia", currency: "Bangladeshi taka", currencySymbol: "৳", capital: "Dhaka", capitalCoordinates: (23.8103, 90.4125)),
            Country(name: "Bhutan", flag: "🇧🇹", continent: "Asia", currency: "Bhutanese ngultrum, Indian rupee", currencySymbol: "Nu., ₹", capital: "Thimphu", capitalCoordinates: (27.4728, 89.6390)),
            Country(name: "Brunei", flag: "🇧🇳", continent: "Asia", currency: "Brunei dollar", currencySymbol: "B$", capital: "Bandar Seri Begawan", capitalCoordinates: (4.9031, 114.9398)),
            Country(name: "Cambodia", flag: "🇰🇭", continent: "Asia", currency: "Cambodian riel", currencySymbol: "៛", capital: "Phnom Penh", capitalCoordinates: (11.5564, 104.9282)),
            Country(name: "China", flag: "🇨🇳", continent: "Asia", currency: "Renminbi (yuan)", currencySymbol: "¥", capital: "Beijing", capitalCoordinates: (39.9042, 116.4074)),
            Country(name: "Cyprus", flag: "🇨🇾", continent: "Asia", currency: "Euro, Cypriot pound", currencySymbol: "€, £", capital: "Nicosia", capitalCoordinates: (35.1856, 33.3823)),
            Country(name: "Georgia", flag: "🇬🇪", continent: "Asia", currency: "Georgian lari", currencySymbol: "₾", capital: "Tbilisi", capitalCoordinates: (41.7151, 44.8271)),
            Country(name: "India", flag: "🇮🇳", continent: "Asia", currency: "Indian rupee", currencySymbol: "₹", capital: "New Delhi", capitalCoordinates: (28.6139, 77.2090)),
            Country(name: "Indonesia", flag: "🇮🇩", continent: "Asia", currency: "Indonesian rupiah", currencySymbol: "Rp", capital: "Jakarta", capitalCoordinates: (-6.2146, 106.8451)),
            Country(name: "Iran", flag: "🇮🇷", continent: "Asia", currency: "Iranian rial", currencySymbol: "﷼", capital: "Tehran", capitalCoordinates: (35.6892, 51.3890)),
            Country(name: "Iraq", flag: "🇮🇶", continent: "Asia", currency: "Iraqi dinar", currencySymbol: "ع.د", capital: "Baghdad", capitalCoordinates: (33.3152, 44.3661)),
            Country(name: "Israel", flag: "🇮🇱", continent: "Asia", currency: "Israeli new shekel", currencySymbol: "₪", capital: "Jerusalem", capitalCoordinates: (31.7683, 35.2137)),
            Country(name: "Japan", flag: "🇯🇵", continent: "Asia", currency: "Japanese yen", currencySymbol: "¥", capital: "Tokyo", capitalCoordinates: (35.6762, 139.6503)),
            Country(name: "Jordan", flag: "🇯🇴", continent: "Asia", currency: "Jordanian dinar", currencySymbol: "JD", capital: "Amman", capitalCoordinates: (31.9566, 35.9457)),
            Country(name: "Kazakhstan", flag: "🇰🇿", continent: "Asia", currency: "Kazakhstani tenge", currencySymbol: "₸", capital: "Nur-Sultan (Astana)", capitalCoordinates: (51.1605, 71.4704)),
            Country(name: "Kuwait", flag: "🇰🇼", continent: "Asia", currency: "Kuwaiti dinar", currencySymbol: "KD", capital: "Kuwait City", capitalCoordinates: (29.3759, 47.9774)),
            Country(name: "Kyrgyzstan", flag: "🇰🇬", continent: "Asia", currency: "Kyrgyzstani som", currencySymbol: "сом", capital: "Bishkek", capitalCoordinates: (42.8746, 74.5698)),
            Country(name: "Laos", flag: "🇱🇦", continent: "Asia", currency: "Lao kip", currencySymbol: "₭", capital: "Vientiane", capitalCoordinates: (17.9757, 102.6331)),
            Country(name: "Lebanon", flag: "🇱🇧", continent: "Asia", currency: "Lebanese pound", currencySymbol: "£ or ل.ل", capital: "Beirut", capitalCoordinates: (33.8886, 35.4955)),
            Country(name: "Malaysia", flag: "🇲🇾", continent: "Asia", currency: "Malaysian ringgit", currencySymbol: "RM", capital: "Kuala Lumpur", capitalCoordinates: (3.1390, 101.6869)),
            
            Country(name: "Maldives", flag: "🇲🇻", continent: "Asia", currency: "Maldivian rufiyaa", currencySymbol: "Rf or .ރ", capital: "Malé", capitalCoordinates: (4.1755, 73.5093)),
            Country(name: "Mongolia", flag: "🇲🇳", continent: "Asia", currency: "Mongolian tögrög", currencySymbol: "₮", capital: "Ulaanbaatar", capitalCoordinates: (47.8864, 106.9057)),
            Country(name: "Myanmar (Burma)", flag: "🇲🇲", continent: "Asia", currency: "Myanmar kyat", currencySymbol: "Ks", capital: "Naypyidaw", capitalCoordinates: (19.7633, 96.0785)),
            Country(name: "Nepal", flag: "🇳🇵", continent: "Asia", currency: "Nepalese rupee", currencySymbol: "₨", capital: "Kathmandu", capitalCoordinates: (27.7172, 85.3240)),
            Country(name: "North Korea", flag: "🇰🇵", continent: "Asia", currency: "North Korean won", currencySymbol: "₩", capital: "Pyongyang", capitalCoordinates: (39.0392, 125.7625)),
            Country(name: "Oman", flag: "🇴🇲", continent: "Asia", currency: "Omani rial", currencySymbol: "ر.ع.", capital: "Muscat", capitalCoordinates: (23.5859, 58.4059)),
            Country(name: "Pakistan", flag: "🇵🇰", continent: "Asia", currency: "Pakistani rupee", currencySymbol: "₨", capital: "Islamabad", capitalCoordinates: (33.6844, 73.0479)),
            Country(name: "Philippines", flag: "🇵🇭", continent: "Asia", currency: "Philippine peso", currencySymbol: "₱", capital: "Manila", capitalCoordinates: (14.5995, 120.9842)),
            Country(name: "Qatar", flag: "🇶🇦", continent: "Asia", currency: "Qatari riyal", currencySymbol: "ر.ق", capital: "Doha", capitalCoordinates: (25.2867, 51.5330)),
            Country(name: "Russia", flag: "🇷🇺", continent: "Asia", currency: "Russian ruble", currencySymbol: "₽", capital: "Moscow", capitalCoordinates: (55.7558, 37.6173)),
            Country(name: "Saudi Arabia", flag: "🇸🇦", continent: "Asia", currency: "Saudi riyal", currencySymbol: "ر.س", capital: "Riyadh", capitalCoordinates: (24.7136, 46.6753)),
            Country(name: "Singapore", flag: "🇸🇬", continent: "Asia", currency: "Singapore dollar", currencySymbol: "$", capital: "Singapore", capitalCoordinates: (1.3521, 103.8198)),
            
            Country(name: "South Korea", flag: "🇰🇷", continent: "Asia", currency: "South Korean won", currencySymbol: "₩", capital: "Seoul", capitalCoordinates: (37.5665, 126.9780)),
            Country(name: "Sri Lanka", flag: "🇱🇰", continent: "Asia", currency: "Sri Lankan rupee", currencySymbol: "Rs or රු", capital: "Colombo", capitalCoordinates: (6.9271, 79.8612)),
            Country(name: "Syria", flag: "🇸🇾", continent: "Asia", currency: "Syrian pound", currencySymbol: "£ or ل.س", capital: "Damascus", capitalCoordinates: (33.5138, 36.2765)),
            Country(name: "Taiwan", flag: "🇹🇼", continent: "Asia", currency: "New Taiwan dollar", currencySymbol: "NT$", capital: "Taipei", capitalCoordinates: (25.0330, 121.5654)),
            Country(name: "Tajikistan", flag: "🇹🇯", continent: "Asia", currency: "Tajikistani somoni", currencySymbol: "ЅМ", capital: "Dushanbe", capitalCoordinates: (38.5658, 68.7738)),
            Country(name: "Thailand", flag: "🇹🇭", continent: "Asia", currency: "Thai baht", currencySymbol: "฿", capital: "Bangkok", capitalCoordinates: (13.7563, 100.5018)),
            Country(name: "Timor-Leste (East Timor)", flag: "🇹🇱", continent: "Asia", currency: "United States dollar", currencySymbol: "$", capital: "Dili", capitalCoordinates: (-8.5569, 125.5603)),
            Country(name: "Turkey", flag: "🇹🇷", continent: "Asia", currency: "Turkish lira", currencySymbol: "₺", capital: "Ankara", capitalCoordinates: (39.9334, 32.8597)),
            Country(name: "Turkmenistan", flag: "🇹🇲", continent: "Asia", currency: "Turkmenistan manat", currencySymbol: "T", capital: "Ashgabat", capitalCoordinates: (37.9601, 58.3253)),
            Country(name: "United Arab Emirates", flag: "🇦🇪", continent: "Asia", currency: "United Arab Emirates dirham", currencySymbol: "د.إ", capital: "Abu Dhabi", capitalCoordinates: (24.4539, 54.3773)),
            Country(name: "Uzbekistan", flag: "🇺🇿", continent: "Asia", currency: "Uzbekistani soʻm", currencySymbol: "so'm", capital: "Tashkent", capitalCoordinates: (41.2995, 69.2401)),
            Country(name: "Vietnam", flag: "🇻🇳", continent: "Asia", currency: "Vietnamese dong", currencySymbol: "₫", capital: "Hanoi", capitalCoordinates: (21.0278, 105.8342)),
            
            
            Country(name: "Yemen", flag: "🇾🇪", continent: "Asia", currency: "Yemeni rial", currencySymbol: "﷼", capital: "Sana'a", capitalCoordinates: (15.3694, 44.1910)),
            Country(name: "Svalbard and Jan Mayen", flag: "🇸🇯", continent: "Arctic", currency: "Norwegian krone", currencySymbol: "kr", capital: "Longyearbyen", capitalCoordinates: (78.2232, 15.6267)),
            Country(name: "Greenland", flag: "🇬🇱", continent: "Arctic", currency: "Danish krone", currencySymbol: "kr", capital: "Nuuk", capitalCoordinates: (64.1836, -51.7214)),
            Country(name: "Franz Josef Land", flag: "🇷🇺", continent: "Arctic", currency: "Russian ruble", currencySymbol: "₽", capital: "Nagurskoye", capitalCoordinates: (80.8000, 47.5000)),
            Country(name: "Ellesmere Island", flag: "🇨🇦", continent: "Arctic", currency: "Canadian dollar", currencySymbol: "$", capital: "Resolute", capitalCoordinates: (74.6972, -94.9003)),
            Country(name: "Alaska", flag: "🇺🇸", continent: "Arctic", currency: "United States dollar", currencySymbol: "$", capital: "Juneau", capitalCoordinates: (58.3019, -134.4197)),
            Country(name: "Antarctica", flag: "🇦🇶", continent: "Antarctica", currency: "No official currency", currencySymbol: "", capital: "No official capital", capitalCoordinates: (0, 0)),
            Country(name: "Ross Dependency", flag: "🇳🇿", continent: "Antarctica", currency: "New Zealand dollar", currencySymbol: "$", capital: "Scott Base", capitalCoordinates: (-77.8460, 166.7352)),
            Country(name: "Australian Antarctic Territory", flag: "🇦🇺", continent: "Antarctica", currency: "Australian dollar", currencySymbol: "$", capital: "Casey Station", capitalCoordinates: (-66.2867, 110.5361)),
            Country(name: "Queen Maud Land", flag: "🇳🇴", continent: "Antarctica", currency: "Norwegian krone", currencySymbol: "kr", capital: "Troll Station", capitalCoordinates: (-71.9484, 2.3470)),
            Country(name: "Peter I Island", flag: "🇳🇴", continent: "Antarctica", currency: "Norwegian krone", currencySymbol: "kr", capital: "None", capitalCoordinates: (0, 0))
            
        ]
        return countries
    }
}
