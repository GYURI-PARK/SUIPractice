//
//  BackGroundView.swift
//  SUIPractice
//
//  Created by GYURI PARK on 2023/04/12.
//


import SwiftUI

class SelectedList: ObservableObject {
    @Published var selected: [String] = []
}


struct BackGroundView: View {
    
    @ObservedObject var selected = SelectedList()
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(0xCECECE), .blue, .red]), startPoint: .bottom, endPoint: .top)
                .ignoresSafeArea()
            
            
            
            VStack{
                if selected.selected.count != 0 {
                    Text("\(selected.selected[0])")
                        .font(.system(size: 30))
                }
                else {
                    Text("selected")
                        .font(.title)
                }
               
            }
        }
        .onAppear {
            let selectedColors = SelectedList()
            selected.selected = selectedColors.selected
            print(selected.selected.count)
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


