//
//  ColorSave.swift
//  SUIPractice
//
//  Created by GYURI PARK on 2023/04/13.
//

import SwiftUI

class ColorPickerModel: ObservableObject {
    @Published var selectedColor = Color.red
}

struct ColorSave: View {
    @ObservedObject var colorPickerModel = ColorPickerModel()

    var body: some View {
        VStack {
            ColorPicker("Select a color", selection: $colorPickerModel.selectedColor)
            Text("Selected color: \(colorPickerModel.selectedColor.description)")
            
            Spacer()
            
        }
    }
}




struct ColorSave_Previews: PreviewProvider {
    static var previews: some View {
        ColorSave()
    }
}
