//
//  FavoritesView.swift
//  SUIPractice
//
//  Created by GYURI PARK on 2023/04/05.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        VStack {
            Text("Favorites")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 40)
            
            Text("Hobbies")
                .font(.title2)
            
            HStack {
                ForEach(information.hobbies, id: \.self) { hobby in
                    Image(systemName: hobby)
                        .resizable()
                        .frame(maxWidth: 80, maxHeight: 60)
                        // .frame(width: 80, height: 60)
                    
                }
                .padding()
            }
            .padding()
            
            Text("foods")
                .font(.title2)
            
            HStack(spacing: 30) {
                
            }
        }
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}