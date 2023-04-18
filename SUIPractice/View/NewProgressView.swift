////
////  NewProgressView.swift
////  SUIPractice
////
////  Created by GYURI PARK on 2023/03/26.
////
//
//import SwiftUI
//
//struct NewProgressView: View {
//    
//    @State var progress: Double = 10
//    @State var num: Int = 1
//    
//    var body: some View {
//        VStack{
//            ProgressView("Question \(num) / 8", value: progress, total: 80)
//            
//            HStack{
//                Button {
//                    progress -= 10
//                    num -= 1
//                } label: {
//                    Text("Back")
//                }
//                
//                Button {
//                    progress += 10
//                    num += 1
//                } label: {
//                    Text("Next")
//                }
//            }
//        }
//    }
//}
//
//struct NewProgressView_Previews: PreviewProvider {
//    static var previews: some View {
//        NewProgressView()
//    }
//}
