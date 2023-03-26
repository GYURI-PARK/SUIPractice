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
                TextField("Enter your Password", text: $password)
                    .textFieldStyle(.roundedBorder)
            }
            
            Form {
                TextField("Enter your ID", text: $userID)
                Text("Your ID is \(userID)")
            }
            
            // textField 탭 했을 때 키보드 종류 바꿔주기
            
        }
    }
}

struct NewTextField_Previews: PreviewProvider {
    static var previews: some View {
        NewTextField()
    }
}
