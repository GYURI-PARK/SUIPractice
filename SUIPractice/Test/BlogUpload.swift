//
//  BlogUpload.swift
//  SUIPractice
//
//  Created by GYURI on 2023/04/01.
//

import SwiftUI

struct BlogUpload: View {
    @State var num : Int = 160
    @State var isShowingModal: Bool = false
    
    var body: some View {
        VStack{
            Text("Now, the number is \(num)")
                .font(.system(size: 30))
                .bold()
                .padding(.bottom, 40)
            
            Button(action:
                    {self.num += 1},
                   label: {Text("Add number")
                    .frame(width: 200, height: 50)
                    .background(Color.black)
                    .cornerRadius(15)
                    .foregroundColor(.white)
                    .font(.system(size: 20))
            })
            .padding(.bottom, 40)
            
            Button(action:
                    {isShowingModal = true},
                   label: {Text("Show Modal")
                    .frame(width: 200, height: 50)
                    .background()
                    .shadow(radius: 10)
                    .foregroundColor(.black)
            }) .sheet(isPresented: $isShowingModal){
                ZStack{
                    Color.black.ignoresSafeArea()
                    Text("Check the number : \(num)")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                    
                }
            }
            
        }
    }
}


struct BlogUpload_Previews: PreviewProvider {
    static var previews: some View {
        BlogUpload()
    }
}
