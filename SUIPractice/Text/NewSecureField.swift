//
//  NewSecureField.swift
//  SUIPractice
//
//  Created by GYURI PARK on 2023/03/26.
//

import SwiftUI

struct NewSecureField: View {
    
    @State var password: String = ""
    @State var isVisivle: Bool = false
    
    var body: some View {
        VStack{
            Form {
                Text("Password")
                
                HStack{
                    if isVisivle {
                        SecureField("Enter your Password", text: $password)
                    } else {
                        TextField("Enter your Password", text: $password)
                    }
                    
                    Button {
                        isVisivle.toggle()
                    } label: {
                        if isVisivle {
                            Image(systemName: "lock")
                        } else{
                            Image(systemName: "lock.open")
                        }
                    }
                }
            }
        }
    }
}

struct NewSecureField_Previews: PreviewProvider {
    static var previews: some View {
        NewSecureField()
    }
}
