//
//  ColorPickerEx.swift
//  SUIPractice
//
//  Created by GYURI PARK on 2023/04/11.
//

import SwiftUI

struct ColorPickerEx: View {
    @State private var colorExample1 = CGColor(red: 0.65, green: 0.26, blue: 0.33, alpha: 0.8)
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 50)
                .fill(Color(colorExample1))
                .overlay(Image(systemName: "paintpalette").offset(x: -20, y: 0)
                    .foregroundColor(.white)
                    .font(.largeTitle))
            
                .shadow(radius: 10)
                .frame(width: 300, height: 300)
                .padding(.top, 50)
            
            ColorPicker("", selection: $colorExample1)
                .labelsHidden()
                .offset(x:30, y: 28)
            
        }
    }
}

struct ColorPickerEx_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerEx()
    }
}
