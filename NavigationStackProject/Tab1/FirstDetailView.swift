//
//  FirstDetailView.swift
//  NavigationStackProject
//
//  Created by Jacek Kosiński G on 31/03/2023.
//

import SwiftUI

struct FirstDetailView: View {
    let text: String
    @Binding var path: NavigationPath
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text(text).font(.largeTitle)
            Divider()
            NavigationLink("Kolejny link", value: " Value for link")
            NavigationLink("Kolejny link", value: 1)
        }
        
        .navigationTitle("Tytuł")
        .navigationBarBackButtonHidden()
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading){
                Button{
                    if path.isEmpty == false{
                        path.removeLast()
                    }
                } label:{
                    Image(systemName: "chevron.left.circle")
                }
            }
        }
    }
}

struct FirstDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            FirstDetailView(text: "Dupa zbita",
                            path: .constant(NavigationPath()))
        }
    }
}
