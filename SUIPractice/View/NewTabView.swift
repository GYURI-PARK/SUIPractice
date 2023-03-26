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
                    Image(systemName: "bolt")
                    Text("home")
                }
            
            
            Text("This is the second tab")
                .tabItem{
                    Image(systemName: "heart")
                    Text("Like")
                }
        }
    }
}

struct NewTabView_Previews: PreviewProvider {
    static var previews: some View {
        NewTabView()
    }
}
