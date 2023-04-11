//
//  CustomColorPicker.swift
//  SUIPractice
//
//  Created by GYURI PARK on 2023/04/11.
//

import SwiftUI

struct CustomColorPicker: View {
    
    let radius: CGFloat = 100
    var diameter: CGFloat {
        radius * 2
    }
    
    @State private var startLocation: CGPoint?
    @State private var location: CGPoint?
    
    var body: some View {
        ZStack {
            if startLocation != nil{
                Circle()
                    .frame(width: diameter, height: diameter)
                    .position(startLocation!)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.blue)
        .gesture(dragGesture)
    }
    
    var dragGesture: some Gesture {
        DragGesture(minimumDistance: 0)
            .onChanged{ val in
                startLocation = val.location
                location = val.location
            }
    }
}

struct CustomColorPicker_Previews: PreviewProvider {
    static var previews: some View {
        CustomColorPicker()
    }
}
