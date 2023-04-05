//
//  MainView2.swift
//  SUIPractice
//
//  Created by GYURI PARK on 2023/04/05.
//

import SwiftUI

struct MainView2: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "person")
                }
            
            StoryView()
                .tabItem {
                    Label("Story", systemImage: "book")
                }
            
            FavoritesView()
                .tabItem {
                    Label("Favorites", systemImage: "star")
                }
            
            FunFactsView()
                .tabItem {
                    Label("Fun Facts", systemImage: "hand.thumbsup")
                }
        }
    }
}

struct MainView2_Previews: PreviewProvider {
    static var previews: some View {
        MainView2()
    }
}
