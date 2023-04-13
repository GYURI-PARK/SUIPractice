//
//  ColorModal.swift
//  SUIPractice
//
//  Created by GYURI PARK on 2023/04/14.
//

import SwiftUI


struct ColorModal: View {
    let rows = [GridItem(.flexible())]
    
    var body: some View {
        ScrollView {
            RoundedRectangle(cornerRadius: 50)
                .frame(width: 250, height: 250)
                .shadow(color: Color(0xCECECE),radius: 10)
                .padding(.top, 50)
                .foregroundColor(Color(0xFF5F5F))
                .onTapGesture {
                //
                }
                
            RoundedRectangle(cornerRadius: 50)
                .frame(width: 250, height: 250)
                .shadow(color: Color(0xCECECE),radius: 10)
                .padding(.top, 50)
                .foregroundColor(Color(0xFFF629))
                .onTapGesture {
                //
                }
            
            RoundedRectangle(cornerRadius: 50)
                .frame(width: 250, height: 250)
                .shadow(color: Color(0xCECECE),radius: 10)
                .padding(.top, 50)
                .foregroundColor(Color(0x83F32F))
                .onTapGesture {
                //
                }
            
            RoundedRectangle(cornerRadius: 50)
                .frame(width: 250, height: 250)
                .shadow(color: Color(0xCECECE),radius: 10)
                .padding(.top, 50)
                .foregroundColor(Color(0x6DDCFF))
                .onTapGesture {
                //
                }
            
            RoundedRectangle(cornerRadius: 50)
                .frame(width: 250, height: 250)
                .shadow(color: Color(0xCECECE),radius: 10)
                .padding(.top, 50)
                .foregroundColor(Color(0xCECECE))
                .onTapGesture {
                //
                }
        }
    }
}

struct ColorModal_Previews: PreviewProvider {
    static var previews: some View {
        ColorModal()
    }
}
