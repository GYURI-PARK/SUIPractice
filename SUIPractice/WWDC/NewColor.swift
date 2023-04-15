//
//  NewColor.swift
//  SUIPractice
//
//  Created by GYURI PARK on 2023/04/14.
//

import SwiftUI

struct NewColor: View {
    @State private var showSheet: Bool = false

    
    var body: some View {
            ZStack{
                VStack{
                    
                    Spacer()
                    
                    Text("Select Mood Color")
                        .font(.system(size: 100))
                        .fontWeight(.black)
                        .padding(.vertical, 25)
                    
                    Spacer()
                    
                    HStack{
                        VStack{
                            Text("Top Note")
                                .fontWeight(.bold)
                                .font(.system(size: 50))
                            
                            Text("Around the beginning of that memory, \n             Choose your mood color")
                                .font(.system(size: 20))
                                .fontWeight(.semibold)
                                .foregroundColor(Color(0xCECECE))
                                .frame(width: 400, height: 60)
                            
                            ZStack{
                                Circle()
                                    .fill(Color.white)
                                    .frame(width: 300, height: 300)
                                    .shadow(color: Color(0xCECECE),radius: 10)
                                    .padding(.top, 50)
                                    .foregroundColor(.white)
                                    
                                
                                Image(systemName: "plus.circle").font(.system(size: 70)).offset(x:0, y: 23).foregroundColor(Color(0xCECECE))
                                    .onTapGesture {
                                        showSheet = true
                                    }
                                    .sheet(isPresented: $showSheet) {
                                        ColorModalver2()
                                    }
                            }
                        }
                        
                        VStack{
                            Text("Middle Note")
                                .fontWeight(.bold)
                                .font(.system(size: 50))
                            
                            Text("      What color mood \n does the memory have?")
                                .font(.system(size: 20))
                                .fontWeight(.semibold)
                                .foregroundColor(Color(0xCECECE))
                                .frame(width: 400, height: 60)
                            
                            ZStack{
                                Circle()
                                    .fill(RadialGradient(
                                        gradient: Gradient(colors: [Color(0xE4EAF2), Color(0x949BA6), Color(0x565759), .blue]),
                                        center: .center,
                                        startRadius: 0,
                                        endRadius: 150
                                    ))
                                    .frame(width: 300, height: 300)
                                    .shadow(color: Color(0xCECECE),radius: 10)
                                    .padding(.top, 50)
                                    .foregroundColor(.white)
                                
                                Image(systemName: "plus.circle").font(.system(size: 70)).offset(x:0, y: 23).foregroundColor(Color(0xCECECE))
                                    .onTapGesture {
                                        showSheet = true
                                    }
                                    .sheet(isPresented: $showSheet) {
                                        ColorModalver2()
                                    }
                            }
                            
                        }
                        
                        VStack{
                            Text("Base Note")
                                .fontWeight(.bold)
                                .font(.system(size: 50))
                            
                            Text("      What color does \nthe memory leave you?")
                                .font(.system(size: 20))
                                .fontWeight(.semibold)
                                .foregroundColor(Color(0xCECECE))
                                .frame(width: 400, height: 60)
                            
                            ZStack{
                                Circle()
                                    .fill(RadialGradient(
                                        gradient: Gradient(colors: [Color(0xE4EAF2), Color(0x949BA6), Color(0x565759), .blue]),
                                        center: .center,
                                        startRadius: 0,
                                        endRadius: 150
                                    ))
                                    .frame(width: 300, height: 300)
                                    .shadow(color: Color(0xCECECE),radius: 10)
                                    .padding(.top, 50)
                                    .foregroundColor(.white)
                                
                                Image(systemName: "plus.circle").font(.system(size: 70)).offset(x:0, y: 23).foregroundColor(Color(0xCECECE))
                                    .onTapGesture {
                                        showSheet = true
                                    }
                                    .sheet(isPresented: $showSheet) {
                                        ColorModalver2()
                                    }
                            }
                        }
                    }
                    Spacer()
                    Spacer()
                    
                }
            }
        }
}

struct NewColor_Previews: PreviewProvider {
    static var previews: some View {
        NewColor().previewInterfaceOrientation(.landscapeLeft)
    }
}
