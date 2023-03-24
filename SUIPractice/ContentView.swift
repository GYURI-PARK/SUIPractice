//
//  ContentView.swift
//  SUIPractice
//
//  Created by GYURI PARK on 2023/03/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var strength: Double? = 0
    @State var isFilling: Bool = false
    
    var body: some View {
        ZStack{
            Color.cyan.edgesIgnoringSafeArea(.all)
            
            
            VStack{
                
                Spacer()
                
                Image(systemName: isFilling ? "heart.fill" : "heart")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200)
                
                Spacer()
                
                HStack {
                    Text("좋아요를 눌러주세요:)")
                    
                    Button {
                        isFilling.toggle()
                    } label: {
                        Text("LOVE")
                            .padding()
                            .background(.pink)
                            .cornerRadius(10)
                    }
                }
            }
        }
    }
}
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    
}
