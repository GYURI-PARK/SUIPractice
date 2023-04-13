//
//  RealColorView.swift
//  SUIPractice
//
//  Created by GYURI PARK on 2023/04/13.
//

import SwiftUI

struct NewColorData {
    
    private var COLOR_KEY = "COLOR_KEY"
    private let userDefaults = UserDefaults.standard
    
    func saveColor(color: Color) {
        let color = UIColor(color).cgColor

        if let components = color.components {
            userDefaults.set(components, forKey: COLOR_KEY)
        }
    }
    
    func loadColor() -> Color {
        guard let array = userDefaults.object(forKey: COLOR_KEY) as?
                [CGFloat] else { return Color.white }
        
        let color = Color(.sRGB,
                          red: array[0],
                          green: array[1],
                          blue: array[2],
                          opacity: array[3])
        
        return color
    }
}

struct RealColorView: View {
    
    @State private var color: Color = Color.white
    @State var colorList = [String]()
    private var colorData = NewColorData()
    
    var body: some View {
        ZStack() {
            RoundedRectangle(cornerRadius: 50)
                .foregroundColor(color)
                .shadow(radius: 10)
                .frame(width: 300, height: 300)
                .padding(.top, 50)
            
            
            VStack{
                ColorPicker("", selection: $color)
                    .labelsHidden()
                    .padding(.top, 70)
                
                Button("Save") {
                    colorData.saveColor(color: color)
                    colorList.append(color.description)
                    print("Test : ", colorData.loadColor())
                    
                    color = colorData.loadColor()
                    print("Test color : ", color)
                    SelectedColor.instance.colors.append("\(color)")
                    print("sdfsdfddsfsd \(SelectedColor.instance.colors)")
                    
                }.foregroundColor(.white)
                    .fontWeight(.semibold)
                    .font(.system(size: 30))
                    .frame(width: 100)
                
            }
        }
    }
}


struct RealColorView_Previews: PreviewProvider {
    static var previews: some View {
        RealColorView()
    }
}


