//
//  ColorModalver2.swift
//  SUIPractice
//
//  Created by GYURI PARK on 2023/04/14.
//

import SwiftUI

struct ColorModalver2: View {
    
    //@State var selectNum: Int
    let gradient1 = Gradient(colors: [Color(0xFF9D94), Color(0xFF5747), Color(0x802B24), Color(0xCC4639)])
    
    let gradient2 = Gradient(colors: [Color(0xFFFD25), Color(0xFFD432), Color(0xFFA525), Color(0xA64F03)])
    
    let gradient3 = Gradient(colors: [Color(0xE0F2DF), Color(0xC0D904), Color(0x8FE060), Color(0x74B54E)])
    
    let gradient4 = Gradient(colors: [Color(0xD8E0F2), Color(0x66ADD9), Color(0x0468BF), Color(0xD9D9E1)])
    
    let gradient5 = Gradient(colors: [Color(0xE4EAF2), Color(0x949BA6), Color(0x565759), .blue])
    
    
    
    var body: some View {
        
        VStack{
            Spacer()
            Text("Pick ONE")
                .font(.system(size: 100))
                .fontWeight(.bold)
            
            Spacer()
            
            HStack(alignment: .center, spacing: 40){
                ScrollView(.horizontal, showsIndicators: true){
                    HStack(spacing: 40){
                        Button(action: {
                            //selectNum = 1
                        }){
                            Circle()
                                .fill(
                                    RadialGradient(
                                        gradient: Gradient(colors: [Color(0xFF9D94), Color(0xFF5747), Color(0x802B24), Color(0xCC4639)]),
                                        center: .center,
                                        startRadius: 0,
                                        endRadius: 150
                                    )
                                ).frame(width: 180)
                        }
                        
                        Button(action: {
                            // button action here
                        }){
                            Circle().fill(
                                RadialGradient(
                                    gradient: Gradient(colors: [Color(0xFFFD25), Color(0xFFD432), Color(0xFFA525), Color(0xA64F03)]),
                                    center: .center,
                                    startRadius: 0,
                                    endRadius: 150
                                )
                            ).frame(width: 180)
                        }
                        
                        Button(action: {
                            // button action here
                        }){
                            Circle().fill(
                                RadialGradient(
                                    gradient: Gradient(colors: [Color(0xE0F2DF), Color(0xC0D904), Color(0x8FE060), Color(0x74B54E)]),
                                    center: .center,
                                    startRadius: 0,
                                    endRadius: 150
                                )
                            ).frame(width: 180)
                        }
                        
                        Button(action: {
                            // button action here
                        }){
                            Circle().fill(
                                RadialGradient(
                                    gradient: Gradient(colors: [Color(0xD8E0F2), Color(0x66ADD9), Color(0x0468BF), Color(0xD9D9E1)]),
                                    center: .center,
                                    startRadius: 0,
                                    endRadius: 150
                                )
                            ).frame(width: 180)
                        }
                        
                        Button(action: {
                            // button action here
                        }){
                            Circle().fill(
                                RadialGradient(
                                    gradient: Gradient(colors: [Color(0xE4EAF2), Color(0x949BA6), Color(0x565759), .blue]),
                                    center: .center,
                                    startRadius: 0,
                                    endRadius: 150
                                )
                            ).frame(width: 180)
                        }
                    }
                }
            }
            
            Spacer()
        }
    }
}

//struct ColorModalver2_Previews: PreviewProvider {
//    @State var selectNum: Int
//
//    static var previews: some View {
//        ColorModalver2(selectedNum: .constant(.red)).previewInterfaceOrientation(.landscapeLeft)
//    }
//}


struct ColorModalver2_Previews: PreviewProvider {
    static var previews: some View {
        ColorModalver2()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
