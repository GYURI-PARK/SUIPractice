//
//  BackGroundView.swift
//  SUIPractice
//
//  Created by GYURI PARK on 2023/04/12.
//


import SwiftUI

struct BackGroundView: View {
    
    
    @State var selected: [String] = []
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(0xCECECE), .blue, .red]), startPoint: .bottom, endPoint: .top)
                .ignoresSafeArea()
            
            
            
            VStack{
                if selected.count != 0 {
                    Text("\(selected[0])")
                        .font(.system(size: 30))
                }
                else {
                    Text("selected")
                }
                
            }
        }
        .onAppear {
            let selectedColors = SelectedColor.instance.colors
            selected = selectedColors
            print(selected.count)
        }
    }
}

struct BackGroundView_Previews: PreviewProvider {
    @State static var selectedColor = Color.white
    
    static var previews: some View {
        BackGroundView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}


