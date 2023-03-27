//
//  NewNavigationStack.swift
//  SUIPractice
//
//  Created by GYURI PARK on 2023/03/27.
//

import SwiftUI

struct NewNavigationStack: View {
    var body: some View {
        NavigationStack {
            
            NavigationLink(value: 3){
                Text("test 3")
            }.navigationDestination(for: Int.self) { value in
                Text("Doris tried \(value) times")
            }
        }
    }
}

struct NewNavigationStack_Previews: PreviewProvider {
    static var previews: some View {
        NewNavigationStack()
    }
}
