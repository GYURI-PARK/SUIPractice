//
//  ContentView.swift
//  SUIPractice
//
//  Created by GYURI PARK on 2023/03/23.
//

import SwiftUI

struct ContentView: View {
    
//    @State var strength: Double? = 0
    @State var isFilling: Bool = false
    
    var body: some View {
        
        List {
            Section {
                HStack {
                    Image(systemName: "heart")
                    Text("Asia")
                }
            }
            Section {
                HStack {
                    Image(systemName: "heart")
                    Text("America")
                    
                }
            }
            Section {
                HStack {
                    Image(systemName: "heart")
                    Text("Europe")
                }
            }
            
            ScrollView {
                
                Group{
                    ZStack{
                        VStack{
                            
                            ScrollView(.horizontal) {
                                HStack{
                                    Image("london_1")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 300)
                                        .cornerRadius(15)
                                    Image("praha_1")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 300)
                                        .cornerRadius(15)
                                }
                            }
                            HStack {
                                Text("London, United Kingdom")
                                
                                Button {
                                    isFilling.toggle()
                                } label: {
                                    Text("SAVE")
                                        .padding(5)
                                        .foregroundColor(.green)
                                        .background(.black)
                                        .cornerRadius(10)
                                }
                            }
                        }
                    }
                    
                    ZStack{
                        VStack{
                            Image("paris_1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 300)
                                .cornerRadius(15)
                            
                            HStack {
                                Text("Paris, France")
                                
                                Button {
                                    isFilling.toggle()
                                } label: {
                                    Text("SAVE")
                                        .padding(5)
                                        .foregroundColor(.green)
                                        .background(.black)
                                        .cornerRadius(10)
                                }
                            }
                        }
                    }
                    
                    Spacer()
                        .frame(height: 25)
                    
                    ZStack{
                        VStack{
                            Image("praha_1")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 300)
                                .cornerRadius(15)
                                .clipped()
                            
                            HStack {
                                Text("Praha, Czech Republic")
                                
                                Button {
                                    isFilling.toggle()
                                } label: {
                                    Text("SAVE")
                                        .padding(5)
                                        .foregroundColor(.green)
                                        .background(.black)
                                        .cornerRadius(10)
                                }
                            }
                        }
                    }
                    
                    Spacer()
                        .frame(height: 25)
                    
                    ZStack{
                        VStack{
                            Image("buda_1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 300)
                                .cornerRadius(15)
                            
                            HStack {
                                Text("Budapest, Hungary")
                                
                                Button {
                                    isFilling.toggle()
                                } label: {
                                    Text("SAVE")
                                        .padding(5)
                                        .foregroundColor(.green)
                                        .background(.black)
                                        .cornerRadius(10)
                                }
                            }
                        }
                    }
                }
                
                
                Spacer()
                    .frame(height: 25)
                
                Group{
                    ZStack{
                        VStack{
                            Image("sweden_1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 300)
                                .cornerRadius(15)
                            
                            HStack {
                                Text("Stockholm, Sweden")
                                
                                Button {
                                    isFilling.toggle()
                                } label: {
                                    Text("SAVE")
                                        .padding(5)
                                        .foregroundColor(.green)
                                        .background(.black)
                                        .cornerRadius(10)
                                }
                            }
                        }
                    }
                    
                    Spacer()
                        .frame(height: 25)
                    
                    ZStack{
                        VStack{
                            Image("kiruna_1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 300)
                                .cornerRadius(15)
                            
                            HStack {
                                Text("Kiruna, Sweden")
                                
                                Button {
                                    isFilling.toggle()
                                } label: {
                                    Text("SAVE")
                                        .padding(5)
                                        .foregroundColor(.green)
                                        .background(.black)
                                        .cornerRadius(10)
                                }
                            }
                        }
                    }
                    
                    Spacer()
                        .frame(height: 25)
                    
                    ZStack{
                        VStack{
                            Image("berlin_1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 300)
                                .cornerRadius(15)
                            
                            HStack {
                                Text("Berlin, Germany")
                                
                                Button {
                                    isFilling.toggle()
                                } label: {
                                    Text("SAVE")
                                        .padding(5)
                                        .foregroundColor(.green)
                                        .background(.black)
                                        .cornerRadius(10)
                                }
                            }
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
}
