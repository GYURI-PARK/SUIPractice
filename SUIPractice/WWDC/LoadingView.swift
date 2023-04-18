////
////  LoadingView.swift
////  SUIPractice
////
////  Created by GYURI PARK on 2023/04/17.
////
//
//import SwiftUI
//
//struct LoadingView: View {
//    @State private var isLoading = false
//
//    var body: some View {
//        ZStack {
//            // 로딩 인디케이터
//            Text("HEllo World")
//
//            
//            BackGroundView()
//                .progressViewStyle(CircularProgressViewStyle(color: .blue))
//                .scaleEffect(isLoading ? 1.0 : 0.1)
//                .opacity(isLoading ? 1.0 : 0.0)
//                .animation(Animation.easeInOut(duration: 1.0))
//                .onAppear() {
//                    isLoading = true
//                }
//        }
//    }
//}
//
//struct LoadingView_Previews: PreviewProvider {
//    static var previews: some View {
//        LoadingView()
//    }
//}
