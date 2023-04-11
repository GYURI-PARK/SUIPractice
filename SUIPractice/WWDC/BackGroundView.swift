////
////  BackGroundView.swift
////  SUIPractice
////
////  Created by GYURI PARK on 2023/04/12.
////
//
//import SwiftUI
//
//struct BackGroundView: View {
//    @Binding var selectedColors: [Color]
//    
//    var body: some View {
//        VStack {
//            ForEach(selectedColors.indices, id: \.self) { index in
//                Rectangle()
//                    .fill(selectedColors[index])
//                    .frame(height: 100)
//            }
//            
//            Button(action: {
//                selectedColors.append(.white)
//            }) {
//                Text("Add Color")
//            }
//            
//            ColorPicker("Pick a color", selection: Binding<Color>(
//                get: { selectedColors[index] },
//                set: { selectedColors[index] = $0 }
//            ))
//                .padding()
//        }
//    }
//}
//
//
//struct BackGroundView_Previews: PreviewProvider {
//    static var previews: some View {
//        BackGroundView()
//    }
//}
