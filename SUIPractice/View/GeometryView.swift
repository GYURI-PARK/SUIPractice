//
//  GeometryView.swift
//  SUIPractice
//
//  Created by GYURI PARK on 2023/04/16.
//

import SwiftUI

struct GeometryView: View {
    var body: some View {
            GeometryReader { geometry in
                VStack {
                    Text("Width: \(geometry.size.width)")
                    Text("Height: \(geometry.size.height)")
                }
                .frame(width: geometry.size.width, height: geometry.size.height)
                .background(Color.blue)
            }
            .background(Color.red)
        }
}

struct GeometryView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryView()
    }
}
