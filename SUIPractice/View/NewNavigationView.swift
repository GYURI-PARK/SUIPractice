//
//  NewNavigationView.swift
//  SUIPractice
//
//  Created by GYURI PARK on 2023/03/27.
//

import SwiftUI

struct NewNavigationView: View {
    var body: some View {
        
        NavigationView {
            NavigationLink(destination: Text("My New View")) {
                ZStack {
                    Color.black
                    Text("Test")
                }
            }
            .navigationTitle("Hello")
        }
    }
}

struct NewNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        NewNavigationView()
    }
}
