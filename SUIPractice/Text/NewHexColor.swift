//
//  NewHexColor.swift
//  SUIPractice
//
//  Created by GYURI PARK on 2023/03/27.
//

import SwiftUI

struct NewHexColor: View {
    var body: some View {
        ZStack{
            Color(0xFFA4D)
        }
    }
}

extension Color {
    init(_ hex: UInt, alpha: Double = 1){
        self.init(
            .sRGB,
        red: Double((hex>>16) & 0xFF) / 255,
            green: Double((hex >> 8) & 0xFF) / 255,
        blue: Double((hex >> 0) & 0xFF) / 255,
        opacity: alpha
        )
    }
}

struct NewHexColor_Previews: PreviewProvider {
    static var previews: some View {
        NewHexColor()
    }
}
