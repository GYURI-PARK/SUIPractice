//
//  SavingColoursApp.swift
//  SUIPractice
//
//  Created by GYURI PARK on 2023/04/13.
//

import SwiftUI

struct ColorData {
    
    private var COLOR_KEY = "COLOR_KEY"
    private let userDefaults = UserDefaults.standard
    
    func saveColor(color: Color) {
        let color = UIColor(color).cgColor
        
        if let components = color.components {
            userDefaults.set(components, forKey: COLOR_KEY)
            print(components)
            print("Colour saved!!")
        }
    }
    
    func loadColor() -> Color {
        guard let array = userDefaults.object(forKey: COLOR_KEY) as?
                [CGFloat] else { return Color.black }
        
        let color = Color(.sRGB,
                          red: array[0],
                          green: array[1],
                          blue: array[2],
                          opacity: array[3])
        print(color)
        print("Colour loaded!")
        return color
    }
}

struct SavingColoursApp: View {
    @State private var color: Color = Color.black
    private var colorData = ColorData()
    
    var body: some View {
        VStack(spacing: 10) {
            ColorPicker("Pick a color", selection: $color)
            
            Rectangle()
                .frame(height: 200)
                .foregroundColor(color)
                .cornerRadius(20)
                .padding()
            
            Button("Save colour") {
                colorData.saveColor(color: color)
            }
            Spacer()
        }
        .padding()
        .onAppear {
            color = colorData.loadColor()
        }
    }
}

struct SavingColoursApp_Previews: PreviewProvider {
    static var previews: some View {
        SavingColoursApp()
    }
}
