//
//  NewTabView.swift
//  SUIPractice
//
//  Created by GYURI PARK on 2023/03/26.
//

import SwiftUI

struct NewTabView: View {
    
    var body: some View {
        TabView{
            Text("this is the first tab")
                .tabItem{
                    Label("Good", systemImage: "bolt")
                    
                }
            
            ZStack{
                Color.black.ignoresSafeArea()
                Text("This is the second tab")
                    .colorInvert()
            }
                    .tabItem{
                        Label("Like", systemImage: "heart")
                        }
        }
    }
}

struct NewTabView_Previews: PreviewProvider {
    static var previews: some View {
        NewTabView()
    }
}
