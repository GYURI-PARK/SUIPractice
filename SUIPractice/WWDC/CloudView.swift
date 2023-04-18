////
////  CloudView.swift
////  SUIPractice
////
////  Created by GYURI PARK on 2023/04/17.
////
//
//import SwiftUI
//
//struct CloudView: View {
//    // 원의 개수와 속도 범위를 정의합니다.
//    let count = 30
//    let speedRange = 0.1...0.5
//
//    // 원의 위치와 속도를 저장합니다.
//    @State var circles: [CircleData] = []
//
//    var body: some View {
//        ZStack {
//            Color.black.edgesIgnoringSafeArea(.all)
//            ForEach(circles.indices, id: \.self) { i in
//                Circle()
//                    .fill(Color.white.opacity(0.5))
//                    .frame(width: circles[i].size, height: circles[i].size)
//                    .position(circles[i].position)
//                    .animation(Animation.linear(duration: circles[i].speed)
//                                .repeatForever(autoreverses: true))
//                    .onAppear {
//                        // 각 원이 무작위로 움직이도록 설정합니다.
//                        withAnimation {
//                            circles[i].position.x += CGFloat.random(in: -50...50)
//                            circles[i].position.y += CGFloat.random(in: -50...50)
//                        }
//                    }
//            }
//        }
////        .onAppear {
////            self.circles = (0..<count).map { _ in
////                CircleData(
////                    position: CGPoint(
////                        x: CGFloat.random(in: 0...UIScreen.main.bounds.width),
////                        y: CGFloat.random(in: 0...UIScreen.main.bounds.height)
////                    ),
////                    speed: CGFloat.random(in: CGFloat(speedRange)),
////                    size: CGFloat.random(in: 5.0...20.0)
////                )
////            }
////        }
//        .onAppear {
//            self.circles = (0..<count).map { _ in
//                CircleData(
//                    position: CGPoint(
//                        x: CGFloat.random(in: 0...UIScreen.main.bounds.width),
//                        y: CGFloat.random(in: 0...UIScreen.main.bounds.height)
//                    ),
//                   // speed: CGFloat.random(in: CGFloat(speedRange)),
//                    size: CGFloat.random(in: 5...20)
//                )
//            }
//        }
//    }
//}
//
//struct CircleData {
//    var position: CGPoint
//    var speed: CGFloat
//    var size: CGFloat
//}
//
//extension CGFloat {
//    func toDouble() -> Double {
//        return Double(self)
//    }
//}
//
//
//struct CloudView_Previews: PreviewProvider {
//    static var previews: some View {
//        CloudView()
//    }
//}
//
//
