//
//  FirstTabView.swift
//  NavigationStackProject
//
//  Created by Jacek Kosiński G on 30/03/2023.
//

import SwiftUI

struct FirstTabView: View {
    @State var showSettings = false
    var body: some View {
        NavigationStack{
            List{
                Text("Root view 1")
                NavigationLink("Idz w pizdu 1", value: "pizdu1")

                NavigationLink("Goto view terefere", value: "terefere")
                NavigationLink("Goto view 1", value: 1)

                
                Button{
                    showSettings.toggle()
                    
                } label: {
                    Text("Settings")
                }
                
                Section("Old" ){
                    
                    NavigationLink("Stary wariant pizdu"){
                        Text("Old w pizdu")
                    }
                }
            }
            .navigationDestination(for: String.self){ textValue in
                Text("detail with value:\(textValue)")
            }
            .navigationDestination(for: Int.self){ intValue in
                Text("detail with value:\(intValue)")
            }
            .navigationDestination(isPresented: $showSettings) {
                Text("Some settings")
            }
        }
    }
}

struct FirstTabView_Previews: PreviewProvider {
    static var previews: some View {
        FirstTabView()
    }
}
