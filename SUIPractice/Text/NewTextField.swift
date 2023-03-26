//
//  NewTextField.swift
//  SUIPractice
//
//  Created by GYURI PARK on 2023/03/26.
//

import SwiftUI

struct NewTextField: View {
    
    @State var userID: String = ""
    @State var password: String = ""
    
    var body: some View {
        
        VStack{
            Form {
                Text("ID")
                TextField("Enter your ID", text: $userID)
                    .textFieldStyle(.roundedBorder)
                Text("Password")
                SecureField("Enter your Password", text: $password)
                    .textFieldStyle(.roundedBorder)
            }
            
            Form {
                TextField("Enter your ID", text: $userID)
                Text("Your ID is \(userID)")
            }
            
            
        }
    }
}

struct NewTextField_Previews: PreviewProvider {
    static var previews: some View {
        NewTextField()
    }
}
