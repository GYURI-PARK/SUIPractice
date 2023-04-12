//
//  BackGroundView.swift
//  SUIPractice
//
//  Created by GYURI PARK on 2023/04/12.
//


import SwiftUI

struct BackGroundView: View {
    
    //@Binding var selectedColor: Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color(0xCECECE), .blue, .red]), startPoint: .bottom, endPoint: .top)
            .ignoresSafeArea()
    }
}

struct BackGroundView_Previews: PreviewProvider {
    @State static var selectedColor = Color.white
    
    static var previews: some View {
        //BackgroundView(selectedColor: $selectedColor)
        BackGroundView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
