//
//  MyNavigationView.swift
//  SUIPractice
//
//  Created by GYURI PARK on 2023/04/03.
//

import SwiftUI

struct MyNavigationLink: View {
    @State var stack = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $stack) {
            NavigationLink("Go to Child View", value: "10")
                .navigationDestination(for: String.self) { value in
                    Text("Child Number is \(value)")
                    
                    Button("Go to Root View") {
                        stack.removeLast()
                    }
                }
        }
    }
}


struct ColorDetail: View {
    
    var color: Color
    var body: some View {
        Text("\(self.color.description)")
        
    }
}

struct ColorDetailForString: View {
    
    var color: String
    var body: some View {
        Text("\(self.color.description)")
    }
}

struct MyNavigationLink_Previews: PreviewProvider {
    static var previews: some View {
        MyNavigationLink()
    }
}
