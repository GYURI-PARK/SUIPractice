//
//  NewPicker.swift
//  SUIPractice
//
//  Created by GYURI PARK on 2023/03/27.
//

import SwiftUI

struct NewPicker: View {
    
    @State var date = Date()
    @State var selectedColor: String = ""
    
    var body: some View {
        VStack{
            DatePicker(selection: $date, label: {
                Text("Today's Date")
            })
            .fontWeight(.bold)
            .padding()
//            .background(Color.gray)
            .cornerRadius(15)
            .position(x: 196, y: 30)
            
            Picker(selection: $selectedColor, label: Text("이건뭐지ㅣ")) {
                Text("Red").tag("red 임")
                Text("Blue").tag("blueee")
                Text("Green").tag("green")
            }
            .pickerStyle(.segmented)
            .position(x: 196, y: 150)
            Text(selectedColor)
        }
        
    }
}

struct NewPicker_Previews: PreviewProvider {
    static var previews: some View {
        NewPicker()
    }
}
