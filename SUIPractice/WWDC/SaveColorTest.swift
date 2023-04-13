//
//  SaveColorTest.swift
//  SUIPractice
//
//  Created by GYURI PARK on 2023/04/13.
//

import SwiftUI

struct ColorData2 {
    
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
        print("이걸 넘겨야돼애애애애애애애", color)
        print("Colour loaded!")
        
        return color
    }
}

// ==============================================================================

struct SaveColorTest: View {
    
    @State private var color: Color = Color.white
    @State var colorList = [String]()
    private var colorData = ColorData2()
    
    var body: some View {
        NavigationView{
            ZStack() {
                RoundedRectangle(cornerRadius: 50)
                    .foregroundColor(color)
                    .shadow(radius: 10)
                    .frame(width: 300, height: 300)
                    .padding(.top, 50)
                
                
                VStack{
                    ColorPicker("", selection: $color)
                        .labelsHidden()
                        .padding()
                    
                    NavigationLink(destination: BackGroundView()) {
                                            Text("Show color list")
                                        }
                    
                    Button("Save") {
                        colorData.saveColor(color: color)
                        colorList.append(color.description)
                        print("Test : ", colorData.loadColor())
                        
                        color = colorData.loadColor()
                        print("Test color : ", color)
                        SelectedColor.instance.colors.append("\(color)")
                        
                    }.foregroundColor(.blue)
                        .fontWeight(.semibold)
                        .font(.system(size: 30))
                        .frame(width: 100)
                    
                }
            }
//            .onAppear {
//                color = colorData.loadColor()
//                print("Test color : ", color)
//                SelectedColor.instance.colors.append("\(color)")
//            }
        }
    }
}

//struct ColorListView: View {
//    @State var colorList: [String]
//
//    var body: some View {
//
//        VStack{
//
//            List(colorList, id: \.self) { color in
//                Text("\(color)")
//            }
//
//        }
//    }
//}


struct SaveColorTest_Previews: PreviewProvider {
    static var previews: some View {
        SaveColorTest()
    }
}

