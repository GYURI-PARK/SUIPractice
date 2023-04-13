//
//  ParticleChoice.swift
//  WWDC2023
//
//  Created by GYURI PARK on 2023/04/10.
//

import SwiftUI

struct ParticleChoice: View {
    @State private var showSheet: Bool = false
    
    var body: some View {
            ZStack{
                VStack{
                    
                    Spacer()
                    
                    Text("Select Mood Icon")
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
                                RoundedRectangle(cornerRadius: 50)
                                    .frame(width: 300, height: 300)
                                    .shadow(color: Color(0xCECECE),radius: 10)
                                    .padding(.top, 50)
                                    .foregroundColor(.white)
                                
                                Image(systemName: "plus.circle").font(.system(size: 70)).offset(x:0, y: 23).foregroundColor(Color(0xCECECE))
                                    .onTapGesture {
                                                        showSheet = true
                                                    }
                                                    .sheet(isPresented: $showSheet) {
                                                        ImgModalView()
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
                                RoundedRectangle(cornerRadius: 50)
                                    .frame(width: 300, height: 300)
                                    .shadow(color: Color(0xCECECE),radius: 10)
                                    .padding(.top, 50)
                                    .foregroundColor(.white)
                                
                                Image(systemName: "plus.circle").font(.system(size: 70)).offset(x:0, y: 23).foregroundColor(Color(0xCECECE))
                                    .onTapGesture {
                                                        showSheet = true
                                                    }
                                                    .sheet(isPresented: $showSheet) {
                                                        ImgModalView()
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
                                RoundedRectangle(cornerRadius: 50)
                                    .frame(width: 300, height: 300)
                                    .shadow(color: Color(0xCECECE),radius: 10)
                                    .padding(.top, 50)
                                    .foregroundColor(.white)
                                
                                Image(systemName: "plus.circle").font(.system(size: 70)).offset(x:0, y: 23).foregroundColor(Color(0xCECECE))
                                    .onTapGesture {
                                                        showSheet = true
                                                    }
                                                    .sheet(isPresented: $showSheet) {
                                                        ImgModalView()
                                                    }
                            }
                        }
                    }
                    Spacer()
                    
//                    Button("Next"){
//                        // ParticleChoice()
//                        showSheet.toggle()
//                    }.sheet(isPresented: $showSheet) {
//                        Text("Hello, world").foregroundColor(.black)
//                            .presentationDetents([.large, .medium, .fraction(0.75)])
//                    }
//                    .font(.system(size: 30).bold())
//                    .foregroundColor(.white)
//                    .padding(.horizontal, 50)
//                    .padding(.vertical, 15)
//                    .background(Color.black)
//                    .cornerRadius(25)
//                    .shadow(radius: 10)
                    
                    Spacer()
                    
                }
            }
        }
        
    }
struct ParticleChoice_Previews: PreviewProvider {
    static var previews: some View {
        ParticleChoice().previewInterfaceOrientation(.landscapeLeft)
    }
}
