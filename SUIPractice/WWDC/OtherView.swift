//
//  OtherView.swift
//  SUIPractice
//
//  Created by GYURI PARK on 2023/04/13.
//

import SwiftUI

struct OtherView: View {
    @EnvironmentObject var colorPickerModel: ColorPickerModel

    var body: some View {
        Rectangle()
            .foregroundColor(colorPickerModel.selectedColor)
    }
}

struct OtherView_Previews: PreviewProvider {
    static var previews: some View {
        OtherView()
    }
}
