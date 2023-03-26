//
//  NewToggle.swift
//  SUIPractice
//
//  Created by GYURI PARK on 2023/03/26.
//

import SwiftUI

struct NewToggle: View {
    
    @State var isLightOn: Bool = false
    
    var body: some View {
        Toggle(isOn: $isLightOn) {
            if isLightOn {
                Text("Light ON")
            } else{
                Text("Light OFF")
            }
        }
        .toggleStyle(.switch)
        .tint(.indigo)
        .padding(50)
    }
}

struct NewToggle_Previews: PreviewProvider {
    static var previews: some View {
        NewToggle()
    }
}
