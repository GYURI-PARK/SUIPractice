//
//  LoginTest.swift
//  SUIPractice
//
//  Created by GYURI PARK on 2023/03/27.
//

import SwiftUI

struct LoginTest: View {
    
    @State var userID: String = ""
    @State var password: String = ""
    @State var isVisible: Bool = true
    @State var isShowingModal: Bool = true
    
    var body: some View {
        VStack{
            Label {
                TextField("User ID", text: $userID)
            } icon: {
                Image(systemName: "person.fill")
            }
            
            Divider()
            
            HStack{
                Label {
                    if isVisible{
                        TextField("Password", text: $password)
                    } else{
                        SecureField("Password", text: $password)
                    }
                } icon: {
                    Image(systemName: "lock.fill")
                }
                
                
                Button{
                    isVisible.toggle()
                }label: {
                    if isVisible {
                        Image(systemName: "lock.open")
                    } else{
                        Image(systemName: "lock")
                    }
                }
                
                
                .sheet(isPresented: $isShowingModal) {
                    ZStack {
                        Color.black.ignoresSafeArea()
                        Text("Modal view")
                            .foregroundColor(.white)
                    }
                }
                
                
            }
            
            Divider()
            
            Button {
                isShowingModal = true
            }label: {
                Text("Sign in")
            }
        }
        
        .padding()
        
    }
}

struct LoginTest_Previews: PreviewProvider {
    static var previews: some View {
        LoginTest()
    }
}
