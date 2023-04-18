//
//  WaveView.swift
//  SUIPractice
//
//  Created by GYURI PARK on 2023/04/16.
//

import SwiftUI

struct WaveView: View {
    let colors = [Color.red, Color.blue, Color.green]
    let animationDuration = 2.0
    let animationDelay = 0.3
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ForEach(0..<3) { index in
                    Circle()
                        .fill(colors[index])
                        .frame(width: geometry.size.width / 3, height: geometry.size.height / 3)
                        .scaleEffect(scaleEffect(for: index))
                        .offset(offset(for: index, in: geometry.size))
                        .animation(Animation.easeInOut(duration: animationDuration).repeatForever(autoreverses: true).delay(animationDelay * Double(index)))
                }
            }
        }
    }
    
    private func offset(for index: Int, in size: CGSize) -> CGSize {
        let radius = size.width / 3
        let angle = CGFloat.pi * CGFloat(index) / 2
        let x = radius * cos(angle)
        let y = radius * sin(angle)
        return CGSize(width: x, height: y)
    }
    
    private func scaleEffect(for index: Int) -> CGFloat {
        return 1 - CGFloat(index) * 0.2
    }
}


struct WaveView_Previews: PreviewProvider {
    static var previews: some View {
        WaveView().previewInterfaceOrientation(.landscapeLeft)
    }
}
