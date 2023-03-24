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
        
        ScrollView {
            ZStack{
                VStack{
                    Image("london_1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300)
                        .cornerRadius(15)
                    
                    HStack {
                        Text("London, United Kingdom")
                        
                        Button {
                            isFilling.toggle()
                        } label: {
                            Text("SAVE")
                                .padding(10)
                                .foregroundColor(.red)
                                .background(Color("DorisColor"))
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
                                .padding(10)
                                .foregroundColor(.red)
                                .background(Color("DorisColor"))
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
}
