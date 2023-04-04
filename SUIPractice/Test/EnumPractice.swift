//
//  EnumPractice.swift
//  SUIPractice
//
//  Created by GYURI PARK on 2023/04/04.
//

enum Position {
    case top, mid, jug, adc, sup
}

enum Position2: String {
    case top            // top
    case mid = "M"      // M
    case sup            // sup
}


enum AppleProduct {
    case iPad(model: String)
    case iPhone(model: String, storage: Int)
    case macBook(model: String, storage: Int, size: Int)
}
