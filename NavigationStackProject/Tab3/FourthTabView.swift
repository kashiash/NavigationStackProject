//
//  FourthTabView.swift
//  NavigationStackProject
//
//  Created by Jacek Kosiński G on 03/04/2023.
//

import SwiftUI

struct FourthTabView: View {
    @StateObject var model = ModelDataManager()
    
    var body: some View {
        NavigationStack{
            RootView(model: model)
        }
    }
}

struct FourthTabView_Previews: PreviewProvider {
    static var previews: some View {
        FourthTabView()
    }
}
