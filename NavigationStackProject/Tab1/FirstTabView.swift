//
//  FirstTabView.swift
//  NavigationStackProject
//
//  Created by Jacek Kosiński G on 30/03/2023.
//

import SwiftUI

struct FirstTabView: View {
    @State var showSettings = false
    @State private var path = NavigationPath()
        /// <#Description#>
    var body: some View {
        NavigationStack(path: $path){
            List{
             
                NavigationLink("Idz w pizdu 1", value: "pizdu1")

                NavigationLink("Goto view terefere", value: "terefere")
                NavigationLink("Goto view 1", value: 1)

                
                Button{
                    showSettings.toggle()
                    
                } label: {
                    Text("Settings")
                }
                
                Section("Old" ){
                    
                    NavigationLink("Books"){
                        BooksListView()
                    }
                    NavigationLink("Third"){
                        ThirdTabView()
                    }
                }
            }
            .navigationDestination(for: String.self){ textValue in
                FirstDetailView(text: textValue,path: $path)
            }
            .navigationDestination(for: Int.self){ intValue in
                Text("detail with value:\(intValue)")
            }
            .navigationDestination(isPresented: $showSettings) {
                CountryListView()
            }
            .navigationTitle("Root view")
        }

    }
}

struct FirstTabView_Previews: PreviewProvider {
    static var previews: some View {
        FirstTabView()
    }
}
