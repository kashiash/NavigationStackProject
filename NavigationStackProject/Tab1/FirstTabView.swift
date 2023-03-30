//
//  FirstTabView.swift
//  NavigationStackProject
//
//  Created by Jacek Kosiński G on 30/03/2023.
//

import SwiftUI

struct FirstTabView: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("Root view 1")
                NavigationLink("Idz w pizdu 1", value: "pizdu1")
                    .navigationDestination(for: String.self){ textvalue in
                        Text("detail with value:\(textvalue)")
                    }
                NavigationLink("Stary wariant pizdu"){
                    Text("Old w pizdu")
                }
            }
        }
    }
}

struct FirstTabView_Previews: PreviewProvider {
    static var previews: some View {
        FirstTabView()
    }
}
